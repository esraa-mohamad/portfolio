import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/core/widgets/custom_snack_bar.dart';
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
  static Future<void> launchEmail({
    required String email,
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw Exception('Could not launch $emailUri');
    }
  }

  static Future<bool> downloadFile(BuildContext context) async {
    String pdfUrl =
        "https://drive.google.com/uc?export=download&id=1OhJrHrej5Pt4qN5Nx4EAhWmZ3s5C6_Mu"; // Direct download link

    if (kIsWeb) {
      // Web: Open the file in a new tab for download
      html.AnchorElement(href: pdfUrl)
        ..setAttribute('download', 'cv.pdf')
        ..click();
      showSnackBar(context: context, message: "Downloading....");
      return true;
    } else {
      try {
        Dio dioDownload = Dio();

        // Select the download directory for mobile/desktop platforms
        String? outputFile = await FilePicker.platform.saveFile(
          initialDirectory: await getDownloadsDirectory().then((value) => value?.path),
          dialogTitle: 'Choose location to save',
          allowedExtensions: ['pdf'],
          type: FileType.custom,
          fileName: 'cv.pdf',
        );

        if (outputFile != null) {
          // Ensure .pdf extension
          if (!outputFile.endsWith('.pdf')) {
            outputFile += '.pdf';
          }

          final response = await dioDownload.download(pdfUrl, outputFile,
              onReceiveProgress: (receivedBytes, totalBytes) {
                int progress = ((receivedBytes / totalBytes) * 100).floor();
                showSnackBar(context: context, message: "Downloading.... $progress%");

              });

          if (response.statusCode == 200) {
           if(context.mounted) showSnackBar(context: context, message: "Download completed%");

            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      } catch (e) {
        return false;
      }
    }
  }
}

