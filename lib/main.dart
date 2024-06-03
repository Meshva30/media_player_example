import 'package:flutter/material.dart';
import 'package:media_player_example/provider/slider_provider.dart';
import 'package:media_player_example/screen/Parallax%20Effect/Parallax%20_Effect.dart';

import 'package:provider/provider.dart';

final videos = [
  'assets/video/vid1.mp4',
  'assets/video/vid2.mp4',
  'assets/video/vid3.mp4',
  'assets/video/vid4.mp4',
  'assets/video/vid6.mp4',


];

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EffectScreen(),
    );
  }
}
