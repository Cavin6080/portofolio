import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/widgets/green_lines_widget.dart';
import 'package:portfolio_brutalism/widgets/logo_widget.dart';
import 'package:portfolio_brutalism/widgets/type_writing_text_widget.dart';

@RoutePage()
class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.50,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: const Color(0XFF4bf190).withOpacity(0.9),
              borderRadius: BorderRadius.circular(10)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TypeWritingTextWidget(
                title: "Connect with me on:",
                fontSize: 22,
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoWidget(
                    logoPath: "assets/logo/linkedin_logo.png",
                    url: 'https://www.linkedin.com/in/cavin-macwan/',
                  ),
                  SizedBox(width: 40),
                  LogoWidget(
                    logoPath: "assets/logo/medium_logo.png",
                    url: 'https://medium.com/@CavinMac',
                  ),
                  SizedBox(width: 40),
                  LogoWidget(
                    logoPath: "assets/logo/twitter_logo.png",
                    url: 'https://twitter.com/cavin_1910',
                  ),
                  SizedBox(width: 40),
                  LogoWidget(
                    logoPath: "assets/logo/github_logo.png",
                    url: 'https://github.com/Cavin6080',
                  ),
                ],
              )
            ],
          ),
        ),
        IgnorePointer(
          ignoring: true,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.50,
            child: GreenLinesWidget(
              color: const Color(0xFF35a965).withOpacity(0.4),
            ),
          ),
        )
      ],
    );
  }
}
