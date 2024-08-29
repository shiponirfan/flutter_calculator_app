import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/utils/app_buttons.dart';
import 'package:flutter_calculator_app/utils/app_colors.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 350,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: AppColors.appBackgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '13 x 50',
                  style: TextStyle(
                    color: AppColors.appFontColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '650',
                  style: TextStyle(
                    color: AppColors.appFontColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      AppButtons(
                        title: 'AC',
                        color: AppColors.appPrimaryColor,
                      ),
                      const AppButtons(title: '7'),
                      const AppButtons(title: '4'),
                      const AppButtons(title: '1'),
                      const AppButtons(title: '.'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      AppButtons(
                        title: '/',
                        color: AppColors.appPrimaryColor,
                      ),
                      const AppButtons(title: '8'),
                      const AppButtons(title: '5'),
                      const AppButtons(title: '2'),
                      const AppButtons(title: '0'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      AppButtons(
                        title: 'X',
                        color: AppColors.appPrimaryColor,
                      ),
                      const AppButtons(title: '9'),
                      const AppButtons(title: '6'),
                      const AppButtons(title: '3'),
                      const AppButtons(title: '%'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      AppButtons(
                        title: 'Clear',
                        bgColor: AppColors.appPrimaryColor,
                      ),
                      AppButtons(
                        title: '-',
                        bgColor: AppColors.appPrimaryColor,
                      ),
                      AppButtons(
                        title: '+',
                        bgColor: AppColors.appPrimaryColor,
                      ),
                      AppButtons(
                        title: '=',
                        flex: 2,
                        bgColor: AppColors.appPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
