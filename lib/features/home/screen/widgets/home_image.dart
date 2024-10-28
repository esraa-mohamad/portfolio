import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_images.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey ,
            offset: Offset(-50, -55),
            blurRadius: 0.7
          ),
        ],
      ),
      child: Image.asset(
        AppImages.homeImage ,
        width: 500,
        height: 230,
      ),
    );
  }
}
