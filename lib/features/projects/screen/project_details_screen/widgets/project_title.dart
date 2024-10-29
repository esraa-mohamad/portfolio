import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/helper/app_lottie.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
          vertical: MediaQuery.of(context).size.height * 0.05),
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: AppColor.mainBlue,
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.close,
                  size: 30,
                  color: AppColor.mainBlue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Center(
            child: Text(
              projectDataModel.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppTextStyles.font50BlueBold
                  .copyWith(fontFamily: FontFamilyHelper.caveatFont),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Lottie.asset(
              AppLottie.mouse,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
