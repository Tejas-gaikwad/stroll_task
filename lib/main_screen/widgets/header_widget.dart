import 'package:flutter/material.dart';

import '../../colors.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final int count;

  const HeaderWidget({
    super.key,
    required this.name,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: primaryTextColor,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 7.9,
                        offset: const Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: primaryTextColor,
                size: 25.0,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 7.9,
                    offset: const Offset(1.0, 1.0),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              timeAndCountWidget(
                  icon: Icons.watch_later_outlined, text: "22H 00m"),
              timeAndCountWidget(icon: Icons.person_2_outlined, text: "103"),
            ],
          )
        ],
      ),
    );
  }

  Widget timeAndCountWidget({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Icon(
            icon,
            color: textWhiteColor,
            size: 16,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 7.9,
                offset: const Offset(0.0, 0.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: textWhiteColor,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 7.9,
                    offset: const Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
