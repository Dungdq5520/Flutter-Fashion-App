import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const TitleWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Icon(
            icon,
            size: 100,
            color: colorMain,
          ),
          const SizedBox(height: 16),
          Text(
            text,
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: colorMain,
              fontFamily: 'UA',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
