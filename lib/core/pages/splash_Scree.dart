import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../assets/constants/colors.dart';
import '../../assets/constants/icons.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed("/onBoarding");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(40),
        child: const CupertinoActivityIndicator(
          radius: 16,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Center(
            child: SvgPicture.asset(AppIcons.logo),
          ),
          const SizedBox(height: 12),
          const Text(
            'Productive',
            style: TextStyle(
              color: white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}