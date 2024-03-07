import 'package:flutter/material.dart';

class UserImgNameAgeWidget extends StatelessWidget {
  const UserImgNameAgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 25, top: 8, bottom: 8, right: 8),
            margin: const EdgeInsets.only(left: 50, top: 5),
            decoration: BoxDecoration(
                color: const Color(0XFF121518).withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: const Text(
              "Angelina, 28",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color(0XFF121518).withOpacity(0.9), width: 5.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/person_img.jpg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
