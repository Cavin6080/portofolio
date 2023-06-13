import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlInBrowser(String url) async {
  try {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch');
    }
  } catch (e) {}
}
