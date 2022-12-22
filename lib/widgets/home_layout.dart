import 'package:flutter/material.dart';
import 'package:flutter_midterm_test1/widgets/home_body.dart';
import 'package:flutter_midterm_test1/widgets/home_cover.dart';

import 'home_footer.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          HomeCover(),
          HomeBody(),
          HomeFooter(),
        ],
      ),
    );
  }
}
