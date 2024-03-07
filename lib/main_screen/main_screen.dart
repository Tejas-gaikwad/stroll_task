import 'package:flutter/material.dart';
import 'package:stroll_task/main_screen/widgets/options_widget.dart';
import '../colors.dart';
import 'widgets/header_widget.dart';
import 'widgets/pick_option_widget.dart';
import 'widgets/user_info_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? selectedOption;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: darkColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                      darkColor,
                      darkColor
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.1, 0.7, 0.9, 1],
                  ),
                ),
                child: Image.asset(
                  "assets/sunset_img.jpg",
                  fit: BoxFit.cover,
                  width: width,
                  height: MediaQuery.of(context).size.height / 1.5,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child:
                      const HeaderWidget(name: "Stroll Bonfire", count: 103)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: const UserInfoWidget(),
                  ),
                ),
                OptionsWidget(
                  selectedOption: selectedOption,
                  onTap: (index) {
                    setState(() {
                      selectedOption = index;
                    });
                  },
                ),
                const PickOptionWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
