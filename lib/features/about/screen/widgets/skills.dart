import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/features/about/screen/widgets/about_titles.dart';

class Skills extends StatelessWidget {
  Skills({super.key});

  final List<String> skills = [
    'Dart',
    'Flutter',
    'BloC',
    'Provider',
    'GetIt',
    'MVVM',
    'Clean Architecture',
    'RESTful API(DIO , Retrofit)',
    'Hive',
    'Sqflite',
    'Clean Code',
    'Firebase',
    'Animation',
    'Flutter Flavor',
    'ProblemSolving',
    'Git & GitHub',
    'Postman',
    'CI/CD',
    'OOP',
    'C++',
    'Python',
    'Java',
    'SQL',
    'HTML',
    'CSS',
    'Figma',
  ];

  @override
  Widget build(BuildContext context) {
    final shuffledSkills = [...skills]..shuffle();
    int index = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AboutTitles(title: 'Skills'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            5,
                (rowIndex) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  5,
                      (colIndex) {
                    // Ensure we don’t exceed the list length
                    if (index >= shuffledSkills.length) index = 0;
                    return Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal:MediaQuery.of(context).size.width * 0.03,
                          vertical: MediaQuery.of(context).size.height * 0.02
                      ),
                      child: skillsTitle(
                        skills[index++],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget skillsTitle(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[500],
      ),
      child: Center(
        child: Text(
          skill,
          style: AppTextStyles.font16WhiteSemiBold
              .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
      ),
    );
  }
}
