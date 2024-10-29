import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/features/about/screen/widgets/about_titles.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AboutTitles(title: 'Education'),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.lightBlue,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bachelors of Computers and Artificial Intelligence',
                      maxLines: 2,
                      style: AppTextStyles.font6BlackBold
                          .copyWith(fontFamily: FontFamilyHelper.robotoFont),
                    ),
                    RichText(
                        text: TextSpan(
                          text: 'Benha University : ',
                          style: AppTextStyles.font4GreyMedium,
                          children: [
                            TextSpan(
                              text: '10/2020 : 7/2024',
                              style:  AppTextStyles.font4BlueMedium,
                            ),
                          ],
                        ),
                    ),
                     SizedBox(
                      height: 15.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'GPA : ',
                        style: AppTextStyles.font4GreyMedium,
                        children: [
                          TextSpan(
                            text: '3.5',
                            style:  AppTextStyles.font4BlueMedium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Graduation Project grade : 4.00 "A+" : ',
                        style: AppTextStyles.font4GreyMedium,
                        children: [
                          TextSpan(
                            text: '3.5',
                            style:  AppTextStyles.font4BlueMedium,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.lightBlue,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Graduation Project Idea',
                      maxLines: 2,
                      style: AppTextStyles.font6BlackBold
                          .copyWith(fontFamily: FontFamilyHelper.robotoFont),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Double Helix Detective System ',
                        style: AppTextStyles.font4GreyMedium,
                        children: [
                          TextSpan(
                            text: '"DNA Testing system"',
                            style:  AppTextStyles.font4BlueMedium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                   Text(
                     'sing for searching and adding DNA files by identifying crimes, paternity tests, compare between files DNA ,searching missing persons and add new data in database' ,
                     style: AppTextStyles.font4LightGreyRegular.copyWith(fontFamily: FontFamilyHelper.poppinsFont),
                   ),
                    SizedBox(
                      height: 15.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Flutter tools :',
                        style: AppTextStyles.font4BlueMedium,
                        children: [
                          TextSpan(
                            text: '- GetIt as dependency injection \n- Retrofit to connect API \n- Json serializable to show response \n- Upload file using file picker \n- Using Clean Architecture',
                            style:  AppTextStyles.font4GreyMedium,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        )
      ],
    );
  }
}
