import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/about/screen/widgets/education.dart';
import 'package:portfolio/features/about/screen/widgets/experience.dart';
import 'package:portfolio/features/about/screen/widgets/quotes.dart';
import 'package:portfolio/features/about/screen/widgets/skills.dart';

class AboutPartScreen extends StatelessWidget {
  const AboutPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(
        vertical: 30.h ,
        horizontal: 18.w ,
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Quotes(),
          SizedBox(
            height: 20.h,
          ),
          const Education(),
           SizedBox(
            height: 50.h,
          ),
           Skills(),
          SizedBox(
            height: 50.h,
          ),
           Experience()
        ],
      ),
    );
  }
}
