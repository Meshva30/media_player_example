
# Carousal Slider with Custom Indicator



## Packges
  - carousel_slider: ^4.2.1
- provider: ^6.1.2



### ScreenShots

<div align="center">
   <img src="https://github.com/Meshva30/media_player_example/assets/136339359/a5aa4649-6ff8-4568-9d04-153eda7276ca" height=500px> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/Meshva30/media_player_example/assets/136339359/8dab89de-6028-4f78-8bfd-86fc8c2d986b" height=500px> &nbsp;&nbsp;&nbsp;&nbsp;
 
</div>
<div align="center">
<video src="https://github.com/Meshva30/media_player_example/assets/136339359/93cb8479-1427-48a5-a20c-57b29aaec501"height=500px> &nbsp;&nbsp;&nbsp;&nbsp;</div>



# Parallax Effect
   Edit the `lib/main.dart` file to include the parallax effect.

   ```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Parallax Effect',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: ParallaxDemo(),
       );
     }
   }

   class ParallaxDemo extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Parallax Effect'),
         ),
         body: ParallaxListView(),
       );
     }
   }

   class ParallaxListView extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return ListView.builder(
         itemCount: 10,
         itemBuilder: (context, index) {
           return ParallaxItem(index: index);
         },
       );
     }
   }

   class ParallaxItem extends StatelessWidget {
     final int index;

     ParallaxItem({required this.index});

     @override
     Widget build(BuildContext context) {
       return Container(
         height: 200,
         child: Stack(
           children: [
             Positioned.fill(
               child: Image.asset(
                 'assets/background.jpg',
                 fit: BoxFit.cover,
                 alignment: Alignment(-0.5 + index * 0.1, 0),
               ),
             ),
             Positioned.fill(
               child: Align(
                 alignment: Alignment.center,
                 child: Transform.translate(
                   offset: Offset(0, -index * 10.0),
                   child: Image.asset('assets/foreground.png'),
                 ),
               ),
             ),
             Center(
               child: Text(
                 'Item $index',
                 style: TextStyle(fontSize: 24, color: Colors.white),
               ),
             ),
           ],
         ),
       );
     }
   }
   ```

### Explanation:

1. **Main Application:**
   - The `MyApp` class sets up the application with a `ParallaxDemo` home screen.

2. **ParallaxDemo Screen:**
   - The `ParallaxDemo` widget is a simple `Scaffold` with an `AppBar` and a `ParallaxListView` as the body.

3. **ParallaxListView:**
   - The `ParallaxListView` widget uses a `ListView.builder` to create a scrollable list of `ParallaxItem` widgets.

4. **ParallaxItem:**
   - Each `ParallaxItem` widget is a `Container` with a fixed height.
   - The `Stack` widget is used to layer the background image, the foreground image, and the text.
   - The background image is positioned to create a parallax effect by adjusting the alignment based on the item index.
   - The foreground image uses a `Transform.translate` to create a parallax effect by shifting its position based on the item index.
   - The `Center` widget is used to overlay text on top of the images.

### ScreenShots

<p align='center'>
  <img src='https://github.com/Meshva30/media_player_example/assets/136339359/ab787e77-01d8-4382-8776-3ba2b69d45ce' width=240>
  <img src='https://github.com/Meshva30/media_player_example/assets/136339359/de9ee28e-764f-4886-b400-6bf704af5015' width=240>
  <img src='https://github.com/Meshva30/media_player_example/assets/136339359/9fc9536a-b320-47f9-ae22-411ea9ba1c3c' width=240>
  <img src='https://github.com/Meshva30/media_player_example/assets/136339359/a0979741-8886-4fb0-9679-533ccc2931f7' width=240>

 
</p>


### video

https://github.com/Meshva30/media_player_example/assets/136339359/04b2673d-e0d4-41f0-90e1-5886fe83bbf8







