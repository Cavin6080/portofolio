import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveButton extends StatefulWidget {
  final String? path;
  final String title;
  final Color? hoverEnterColor;
  final Color? hoverExitColor;
  final double? fontSize;
  final double? bottomPadding;
  const RiveButton({
    super.key,
    this.path,
    required this.title,
    this.hoverEnterColor,
    this.hoverExitColor,
    this.fontSize,
    this.bottomPadding,
  });

  @override
  State<RiveButton> createState() => _RiveButtonState();
}

class _RiveButtonState extends State<RiveButton> with TickerProviderStateMixin {
  late final StateMachineController? _controller;
  late final Animation animation;
  late final AnimationController animationController;
  SMITrigger? input;

  bool isPressed = false;

  List<Artboard> artboards = [];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    animation = ColorTween(
      begin: widget.hoverEnterColor ?? Colors.blue,
      end: widget.hoverExitColor ?? Colors.white,
    ).animate(animationController);
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    await initializeDependency();
    setState(() {});
  }

  initializeDependency() async {
    final data = await rootBundle.load(widget.path ?? 'assets/button.riv');

    final file = RiveFile.import(data);

    // The artboard is the root of the animation and gets drawn in the
    // Rive widget.
    final artboard = file.mainArtboard;
    artboards.add(artboard);
    _controller =
        StateMachineController.fromArtboard(artboard, 'State Machine 1');
    if (_controller != null) {
      artboard.addController(_controller!);
      input = _controller!.findInput<bool>('pressTrigger') as SMITrigger;
    }
  }

  void _hitBump() {
    isPressed = !isPressed;
    input?.fire();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _hitBump,
      behavior: HitTestBehavior.opaque,
      child: MouseRegion(
        opaque: false,
        onEnter: (event) {
          animationController.forward();
        },
        onExit: (event) {
          animationController.reverse();
        },
        child: AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return Stack(
              children: [
                child!,
                Padding(
                  padding: EdgeInsets.only(
                    bottom: isPressed ? 0 : widget.bottomPadding ?? 5,
                  ),
                  child: Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: animation.value,
                        fontSize: widget.fontSize,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          child: artboards.isEmpty
              ? const CircularProgressIndicator()
              : Rive(artboard: artboards[0]),
        ),
      ),
    );
  }
}
