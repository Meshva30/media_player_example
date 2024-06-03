import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';
import '../utils/list.dart';



final CarouselController _controller = CarouselController();

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 28,
        ),
        title: const Text(
          'Carousal Slider',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              size: 28,
            ),
          ),
        ],
      ),
      body: Consumer<SliderProvider>(
        builder: (context, sliderProvider, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: imglist[sliderProvider.current]['color'].cast<Color>(),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imglist.map((item) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Stack(
                            children: [
                              Container(
                                height: 530,
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(item['img']),
                                  ),
                                ),
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    item['text'],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 10 / 16,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      sliderProvider.ChangesImages(index);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imglist.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(sliderProvider.current == entry.key
                                  ? 0.9
                                  : 0.4),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
