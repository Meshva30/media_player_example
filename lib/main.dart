import 'package:flutter/material.dart';
import 'package:media_player_example/provider/slider_provider.dart';
import 'package:media_player_example/screen/Carousal%20Slider%20with%20Custom%20Indicator.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    ChangeNotifierProvider(create: (context) => SliderProvider(),child: const MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
