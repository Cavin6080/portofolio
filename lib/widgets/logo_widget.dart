import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/core/functions/launch_url.dart';

class LogoWidget extends StatelessWidget {
  final String url;
  final String logoPath;
  const LogoWidget({
    super.key,
    required this.url,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launchUrlInBrowser(url);
      },
      child: Image.asset(
        logoPath,
        height: 60,
      ),
    );
  }
}
