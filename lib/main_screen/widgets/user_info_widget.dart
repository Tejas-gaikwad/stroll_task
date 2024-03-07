import 'package:flutter/material.dart';

import '../../colors.dart';
import 'user_img_name_widget.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 7.5,
          child: Stack(
            children: [
              const Positioned(
                left: 15,
                child: UserImgNameAgeWidget(),
              ),
              Positioned(
                left: 90,
                bottom: 10,
                right: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: const Text(
                    "What is your favorite time of the day?",
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: textWhiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          "“Mine is definitely the peace in the morning.”",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            color: const Color(0XFFCBC9FF).withOpacity(0.70),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
