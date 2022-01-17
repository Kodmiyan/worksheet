import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constans.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeBallImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const Text(
              Constants.title,
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Image.asset(pokeBallImageUrl,
                height: 100.h, fit: BoxFit.fitWidth))
      ],
    );
  }
}
