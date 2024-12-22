import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/helper/app_lottie.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_info.dart';

class ContactPartScreen extends StatelessWidget {
  const ContactPartScreen({super.key, required this.globalKey});
  final GlobalKey  globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width *0.02,
        vertical: MediaQuery.of(context).size.height *0.02,
      ),
      color: AppColor.brandeisBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Let\'s Work Together\nI\'m available for freelancing' ,
          style: AppTextStyles.font40WhiteBold.copyWith(
            fontFamily: FontFamilyHelper.caveatFont
          ),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width *0.03,
          // ),
          Lottie.asset(
              AppLottie.arrowRight ,
            width: MediaQuery.of(context).size.width *0.1,
            height: MediaQuery.of(context).size.height *0.08
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width *0.03,
          // ),
          const ContactInfo(),
        ],
      )
    );
  }
}
