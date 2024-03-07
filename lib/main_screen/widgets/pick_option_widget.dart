import 'package:flutter/material.dart';
import 'package:stroll_task/colors.dart';

class PickOptionWidget extends StatelessWidget {
  const PickOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pick your option.",
                style: TextStyle(
                  color: Color(0XFFE5E5E5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "See who has a similar mind.",
                style: TextStyle(
                  color: Color(0XFFE5E5E5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(width: 18),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.2,
                      color: primaryColor,
                    )),
                child: Image.asset(
                  "assets/mic_icon.png",
                  height: 25,
                  width: 18,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.2,
                      color: primaryColor,
                    )),
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          )
        ],
      ),
    );
  }
}
