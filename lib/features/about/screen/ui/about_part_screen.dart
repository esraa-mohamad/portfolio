import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Quotes(),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          const Education(),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Skills(),
           SizedBox(
             height: MediaQuery.of(context).size.height * 0.07,
          ),
          Experience()
        ],
      ),
    );
  }
}
