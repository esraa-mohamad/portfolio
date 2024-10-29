import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/models/experience_data_model.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/features/about/screen/widgets/about_titles.dart';

class Experience extends StatelessWidget {
  Experience({super.key});

  final List<ExperienceDataModel> data = [
    ExperienceDataModel(
      iconPath: AppImages.gdscLogo,
      title: 'Bootcamp GDSC Benha',
      description:
          "- Instructor & Technical flutter in volunteer community \n- Devised, facilitated, and taught the Flutter instruction components with +40 h of teaching \n- Lead 5 teams in work shop and practice explaining in sessions \n- Getting students ready for a competition at the end of the bootcamp",
      time: '2 weeks in 06/22',
    ),
    ExperienceDataModel(
      iconPath: AppImages.careerLogo,
      title: 'Career 180 , Learn It',
      description:
          "- Flutter Bootcamp \n- Theoretical explanation of reviewing filters \n- Working on many projects \n- Training and understanding the labor market \n- Hiring Jobs",
      time: '09/2024 - 11/2024',
    ),
    ExperienceDataModel(
      iconPath: AppImages.innovateLogo,
      title: 'Innovate X Solution',
      description:
          "- Flutter Internship \n- Working on portfolio project of company \n- Preparing for freelance work",
      time: '09/2024 - Present',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final shuffledData = [...data]..shuffle();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AboutTitles(
          title: 'Experience',
        ),
        SizedBox(
          height: 20.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate((shuffledData.length / 2).ceil(), (rowIndex) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(2, (colIndex) {
                int itemIndex = rowIndex * 2 + colIndex;
                if (itemIndex >= shuffledData.length) {
                  return Expanded(child: Container()); // Empty widget for alignment
                }
                return Expanded(
                  child: SizedBox(
                    width: 350.w,
                    height: 350.h,
                    child: experienceData(
                      logo: data[itemIndex].iconPath,
                      title: data[itemIndex].title,
                      description: data[itemIndex].description,
                      time: data[itemIndex].time,
                    ),
                  ),
                );
              }),
            );
          }),
        ),
      ],
    );
  }

  Widget experienceData({
    required String logo,
    required String title,
    required String description,
    required String time,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, bottom: 25.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: AppColor.lightBlue,
                blurRadius: 10,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.mainBlue,
                        width: 2,
                      )),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  child: Image.asset(
                    logo,
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 2,
                    style: AppTextStyles.font8BlackBold.copyWith(
                      fontFamily: FontFamilyHelper.robotoFont,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.font4GreyMedium,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  time,
                  style: AppTextStyles.font4BlueMedium.copyWith(
                    fontFamily: FontFamilyHelper.poppinsFont,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
