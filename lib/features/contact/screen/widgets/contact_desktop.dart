import 'package:flutter/material.dart';

import 'contact_arrow.dart';
import 'contact_info.dart';
import 'contact_message.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContactMessage(),
        ContactArrow(),
        ContactInfo(),
      ],

    );
  }
}
