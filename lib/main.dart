import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<String> ImageList = [
    "https://cdn.pixabay.com/photo/2016/02/23/17/44/apple-1218166_640.png",
    "https://cdn.pixabay.com/photo/2017/05/31/11/28/the-cup-2360104_640.png",
    "https://cdn.pixabay.com/photo/2016/11/25/07/00/diamond-1857736_640.png",
    "https://cdn.pixabay.com/photo/2015/10/27/08/51/autumn-1008520_640.png",
    "https://cdn.pixabay.com/photo/2017/07/08/18/38/decor-2485239_960_720.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: LayoutBuilder(builder: (context, layoutblder) {
          final width = layoutblder.maxWidth;
          final higit = layoutblder.maxHeight;
          if (width < 600) {
            print("Modil Size hight: $higit With: $width");
            return ListView.builder(
              itemCount: ImageList.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Image.network(ImageList[index]),
                ),
              ),
            );
          }
          if (width < 900 && width > 600) {
            print("web Size hight: $higit With: $width");
            return ListView.builder(
              itemCount: ImageList.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Image.network(ImageList[index]),
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: ImageList.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.red,
                child: Image.network(ImageList[index]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
