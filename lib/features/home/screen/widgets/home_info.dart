import 'package:flutter/material.dart';
import '../../../../core/widgets/icons_link.dart';
import 'download_cv_file.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconsLink(),
        DownloadCvFile(),
      ],
    );
  }
}
