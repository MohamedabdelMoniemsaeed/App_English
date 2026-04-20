// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/zoo/data_zoo.dart';
import 'package:tuko/screen/widgets_details/zoo_details.dart';

import '../../models/zoo/image_zoo.dart' show ImageZoo;
import '../../models/zoo/sound_zoo.dart';

class ZooScreen extends StatefulWidget {
  const ZooScreen({super.key});

  @override
  State<ZooScreen> createState() => _ZooScreenState();
}

class _ZooScreenState extends State<ZooScreen> {
  // ignore: recursive_getters
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: unused_local_variable
    int indexs = 0;
    final List<ZooDetails> item = [
      
      ZooDetails(
        nameEnglish: DataZoo.tiger,
        passimage: ImageZoo.tiger,
        nameArbic: DataZoo.tigerArabic,
        sounds: SoundZoo.tiger,
      ),
      ZooDetails(
        nameEnglish: DataZoo.elephant,
        passimage: ImageZoo.elephant,
        nameArbic: DataZoo.elephantArabic,
        sounds: SoundZoo.elephant,
      ),
     
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.pink[400],
        backgroundColor: Theme.of(context).dividerColor,
        title: const Text('Zoo',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          enlargeCenterPage: true,
          // enlargeFactor: 0.3,
          onPageChanged: (index, reason) => setState(() => indexs = index),
          scrollDirection: Axis.horizontal,
          height: size.height,
        ),
        items: item
            .map((e) => ZooDetails(
                  nameArbic: e.nameArbic,
                  nameEnglish: e.nameEnglish,
                  passimage: e.passimage,
                  sounds: e.sounds,
                ))
            .toList(),
      ),
    );
  }
}
