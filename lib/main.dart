import 'package:flutter/material.dart';
import 'package:fundamental_2/pages/paddingwidgetpage.dart';
import 'package:fundamental_2/pages/imagewidgetpage.dart';
import 'package:fundamental_2/pages/iconwidgetpage.dart';
import 'package:fundamental_2/pages/containerisizedbox.dart';
import 'package:fundamental_2/pages/packagespage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Essentials")),
        body: const EssentialList(),
      ),
    );
  }
}

class EssentialList extends StatelessWidget {
  const EssentialList({super.key}); 

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> essentials = [
      {"title": "Padding Widget", "icon": Icons.padding, "page": const PaddingWidgetPage()},
      {"title": "Image Widget", "icon": Icons.image, "page": const ImageWidgetPage()},
      {"title": "Icon Widget", "icon": Icons.insert_emoticon, "page": const IconWidgetPage()},
      {"title": "Container & SizedBox", "icon": Icons.crop_square, "page": const ContainerSizedBoxPage()},
      {"title": "Packages", "icon": Icons.extension, "page": const PackagesPage()},
    ];

    return ListView.builder(
      itemCount: essentials.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(essentials[index]['icon'], color: Colors.blue),
          title: Text("Flutter Essential - ${essentials[index]['title']}"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => essentials[index]['page'] as Widget),
            );
          },

        );
      },
    );
  }
}
