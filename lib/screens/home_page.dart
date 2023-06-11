import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/widgets/custom_container.dart';
import 'package:portfolio_brutalism/widgets/rive_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6839fe),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const NeoBrutalismContainer(
                    child: TitleTVWidget(),
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: NeoBrutalismContainer(
                      backgroundColor: Colors.transparent,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Transform.translate(
                              offset: const Offset(0, -20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: RiveButton(
                                      title: 'ABOUT',
                                      key: UniqueKey(),
                                    ),
                                  ),
                                  Expanded(
                                    child: RiveButton(
                                      title: 'PROJECTS',
                                      key: UniqueKey(),
                                    ),
                                  ),
                                  Expanded(
                                    child: RiveButton(
                                      title: 'CONNECT',
                                      key: UniqueKey(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Flexible(
                            child: RiveButton(
                              path: 'assets/pink_button.riv',
                              title: 'Join our community',
                              hoverEnterColor: Colors.white70,
                              hoverExitColor: Colors.white,
                              fontSize: 16,
                              bottomPadding: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: NeoBrutalismContainer(
                child: SizedBox(
                  child: Center(
                      child: Text(
                    "Coming soon",
                    style: TextStyle(color: Colors.green),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GreenLinesWidget extends StatelessWidget {
  const GreenLinesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Divider(
        color: Colors.green.withOpacity(0.2),
        height: 8,
        thickness: 2,
      ),
    );
  }
}
