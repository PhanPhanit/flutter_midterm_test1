import 'package:flutter/material.dart';

class HomeCover extends StatelessWidget {
  const HomeCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff326084),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "images/img_fe_logo.png",
            fit: BoxFit.fill,
            width: 100,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Faculty of Engineering",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
