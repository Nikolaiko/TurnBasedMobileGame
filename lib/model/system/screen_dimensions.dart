import 'package:flutter/material.dart';

class ScreenDimensions {
  final double width;
  final double fullHeight;
  final double withoutSafeAreaHeight;

  ScreenDimensions(BuildContext context) : 
  width = MediaQuery.of(context).size.width,
  fullHeight = MediaQuery.of(context).size.height,
  withoutSafeAreaHeight = MediaQuery.of(context).size.height 
              - MediaQuery.of(context).padding.top
              - MediaQuery.of(context).padding.bottom;
  
}