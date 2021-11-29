import 'package:flutter/material.dart';
import 'package:flutter_mvvm/presentation/resources/color_manager.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  _OnBordingViewState createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: const Center(child: Text("Welcome to onBoarding")),
    );
  }
}
