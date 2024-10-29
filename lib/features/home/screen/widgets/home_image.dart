import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_images.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.3,
      height: MediaQuery.of(context).size.height *0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey ,
            offset: Offset(-20, -20),
            blurRadius: 0.7
          ),
        ],
      ),
      child: Image.asset(
        AppImages.homeImage ,
        width: MediaQuery.of(context).size.width *0.2,
        height: MediaQuery.of(context).size.height *0.3,
      ),
    );
  }
}
