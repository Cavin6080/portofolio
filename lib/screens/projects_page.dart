import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/widgets/green_lines_widget.dart';
import 'package:portfolio_brutalism/widgets/type_writing_text_widget.dart';

@RoutePage()
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.55,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: const Color(0XFF4bf190).withOpacity(0.9),
              borderRadius: BorderRadius.circular(10)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TypeWritingTextWidget(
                  title: "Projects",
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              UnorderedList(
                texts: [
                  'Advanced BottomSheet UI',
                  'WidgetBook Demo',
                  'NFT DApp Example',
                  'ChatSpan - Chat App',
                  'Generative Art In Flutter',
                  'Dino Game using Flame',
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: TypeWritingTextWidget(
                  title:
                      "If you want to see the source code for all of the projects then you can go through my GiHub Repository",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.55,
          child: GreenLinesWidget(
            color: const Color(0xFF35a965).withOpacity(0.4),
          ),
        )
      ],
    );
  }
}

class UnorderedList extends StatelessWidget {
  const UnorderedList({super.key, required this.texts});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text: text));
      // Add space between items
      widgetList.add(const SizedBox(height: 15.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: TypeWritingTextWidget(
            title: text,
          ),
        ),
      ],
    );
  }
}
