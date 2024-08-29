import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppButtons extends StatelessWidget {
  const AppButtons(
      {required this.title,
      super.key,
      this.onTap,
      this.color,
      this.flex,
      this.bgColor});

  final String title;
  final Function()? onTap;
  final Color? color;
  final Color? bgColor;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: double.infinity,
          decoration:
              BoxDecoration(color: bgColor ?? AppColors.appSecondaryColor),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(1),
          child: Text(
            title,
            style: TextStyle(
              color: color ?? AppColors.appFontColor,
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
