import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_arrow.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_info.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_message.dart';

import '../../../../core/helper/spacing.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactMessage(),
        verticalSpace(50),
        ContactArrow(),
        verticalSpace(50),
        ContactInfo(),
      ],
    );
  }
}
