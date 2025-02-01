import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/helper/app_lottie.dart';

class ContactArrow extends StatelessWidget {
  const ContactArrow({super.key});

  @override
  Widget build(BuildContext context) {
    var  width  = MediaQuery.sizeOf(context).width;
    return  Lottie.asset(
      width  < 700   ?  AppLottie.arrowDown :
        AppLottie.arrowRight ,
      width: 200.w  ,
      height: 200.h  ,
      fit: BoxFit.scaleDown
    );
  }
}
