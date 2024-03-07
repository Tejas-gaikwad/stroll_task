import 'package:flutter/material.dart';
import 'package:stroll_task/colors.dart';

class OptionsWidget extends StatelessWidget {
  final Function(int index) onTap;
  final int? selectedOption;
  const OptionsWidget({
    super.key,
    required this.onTap,
    required this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    List<OptionModel> list = [
      OptionModel(option: "A", optionText: "The peace in the early mornings"),
      OptionModel(option: "B", optionText: "The magical golden hours"),
      OptionModel(option: "C", optionText: "Wind-down time after dinners"),
      OptionModel(option: "D", optionText: "The serenity past midnight"),
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.2,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              onTap(index);
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                    color: Color(0XFF232A2E),
                  ),
                  BoxShadow(
                      blurRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                      color: Color(0XFF232A2E))
                ],
                border: Border.all(
                  width: 3.0,
                  color: (selectedOption == index)
                      ? const Color(0XFF8B88EF)
                      : Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0XFF232A2E),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (selectedOption == index)
                            ? const Color(0XFF8B88EF)
                            : Colors.transparent,
                        border: Border.all(
                          color: primaryTextColor,
                        )),
                    child: Text(
                      list[index].option,
                      style: const TextStyle(color: Color(0XFFC4C4C4)),
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      list[index].optionText,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class OptionModel {
  final String option;
  final String optionText;

  OptionModel({
    required this.option,
    required this.optionText,
  });
}
