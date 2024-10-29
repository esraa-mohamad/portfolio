import 'package:flutter/material.dart';
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
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
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
                      style: AppTextStyles.font20BlackBold
                          .copyWith(fontFamily: FontFamilyHelper.robotoFont),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Benha University : ',
                        style: AppTextStyles.font16GreyMedium,
                        children: [
                          TextSpan(
                            text: '10/2020 : 7/2024',
                            style: AppTextStyles.font16BlueMedium,
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'GPA : ',
                        style: AppTextStyles.font16GreyMedium,
                        children: [
                          TextSpan(
                            text: '3.5',
                            style: AppTextStyles.font16BlueMedium,
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Graduation Project grade : 4.00 "A+" : ',
                        style: AppTextStyles.font16GreyMedium,
                        children: [
                          TextSpan(
                            text: '3.5',
                            style: AppTextStyles.font16BlueMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
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
                      style: AppTextStyles.font20BlackBold
                          .copyWith(fontFamily: FontFamilyHelper.robotoFont),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Double Helix Detective System ',
                        style: AppTextStyles.font16GreyMedium,
                        children: [
                          TextSpan(
                            text: '"DNA Testing system"',
                            style: AppTextStyles.font16BlueMedium,
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'sing for searching and adding DNA files by identifying crimes, paternity tests, compare between files DNA ,searching missing persons and add new data in database',
                      style: AppTextStyles.font14LightGreyMedium
                          .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Flutter tools :',
                        style: AppTextStyles.font16BlueMedium,
                        children: [
                          TextSpan(
                            text:
                                '\n- GetIt as dependency injection \n- Retrofit to connect API \n- Json serializable to show response \n- Upload file using file picker \n- Using Clean Architecture',
                            style: AppTextStyles.font16GreyMedium,
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
