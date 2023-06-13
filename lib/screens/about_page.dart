import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/widgets/green_lines_widget.dart';
import 'package:portfolio_brutalism/widgets/type_writing_text_widget.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
              TypeWritingTextWidget(
                title:
                    "He's Cavin Macwan and He's a Flutter Developer at 7Span",
              ),
              SizedBox(height: 50),
              TypeWritingTextWidget(
                title:
                    "He likes to share his insights on Flutter and Mobile Development by writing articles on Medium and by contributing on Stackoverflow.",
              ),
              SizedBox(height: 50),
              TypeWritingTextWidget(
                title:
                    "Apart from coding, He likes to play basketball and participating in hackathons. He is also a national basketball player.",
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
