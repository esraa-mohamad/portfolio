import 'package:flutter/material.dart';

import '../../../../core/helper/app_functions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_family_helper.dart';

class ContactEmail extends StatelessWidget {
  const ContactEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.alternate_email ,
          size: 20,
          color: Colors.black,
        ),
        GestureDetector(
          onTap: (){
            AppFunctions.launchEmail(email: "esoodawood186@gmail.com");
          },
          child: Text(
            ' esoodawood186@gmail.com',
            style: AppTextStyles.font18BlackSemiBold(context).copyWith(
              fontFamily: FontFamilyHelper.poppinsFont,
            ),
          ),
        ),
      ],
    );
  }
}
