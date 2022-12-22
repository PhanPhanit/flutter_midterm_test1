import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_midterm_test1/widgets/email_body.dart';
import 'package:flutter_midterm_test1/widgets/facebook_body.dart';
import 'package:flutter_midterm_test1/widgets/phone_body.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int tapIndex = 0;
  List<String> tapText = ["Phone", "Email", "Facebook"];

  void setTapIndex(int index) {
    setState(() {
      tapIndex = index;
    });
  }

  _getTapBody() {
    if (tapIndex == 0) {
      return PhoneBody();
    } else if (tapIndex == 1) {
      return EmailBody();
    } else {
      return FacebookBody();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < tapText.length; i++)
                  taps(
                      isActive: i == tapIndex ? true : false,
                      text: tapText[i],
                      idx: i)
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: double.infinity,
              // Change Body
              child: _getTapBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget taps({bool? isActive = false, String? text, required int idx}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: () => setTapIndex(idx),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
          decoration: BoxDecoration(
              color: isActive == true ? Color(0xFF275879) : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 2,
                  color: isActive == true ? Color(0xFF275879) : Colors.black)),
          child: Text(
            text.toString(),
            style: TextStyle(
              fontSize: 16,
              color: isActive == true ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
