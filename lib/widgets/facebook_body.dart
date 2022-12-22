import 'package:flutter/material.dart';

class FacebookBody extends StatelessWidget {
  const FacebookBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 10,
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Image.asset("images/img_facebook_sign_in.png"),
      ),
    );
  }
}
