
import 'package:flutter/material.dart';

import '../../main.dart';

import 'components/video_card.dart';

class EffectScreen extends StatefulWidget {
  const EffectScreen({super.key});

  @override
  State<EffectScreen> createState() => _EffectScreenState();
}

class _EffectScreenState extends State<EffectScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView.builder(
              controller: _pageController,
              itemCount: videos.length,
              itemBuilder: (context, index) {
                return VideoCard(
                  assetPath: videos[index],
                  isSelected: _selectedIndex == index,
                );
              },
              onPageChanged: (i) => setState(
                    () => _selectedIndex = i,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
