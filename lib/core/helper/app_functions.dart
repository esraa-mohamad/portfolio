import 'package:url_launcher/url_launcher.dart';

class AppFunctions{

  static Future<void>launchLinks(String urlLink) async {
    final Uri url = Uri.parse(urlLink);
    if (await canLaunchUrl(url)){
      await launchUrl(url);
    }else {
      throw Exception('Could not launch $url');
    }
  }

}