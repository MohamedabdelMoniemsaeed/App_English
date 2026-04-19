// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/zoo/data_Zoo.dart';
import 'package:tuko/screen/widgets_details/zoo_Details.dart';

import '../../models/zoo/image_Zoo.dart' show ImageZoo;
import '../../models/zoo/sound_Zoo.dart';

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
        nameEnglish: DataZoo.gorilla,
        passimage: ImageZoo.gorilla,
        nameArbic: DataZoo.gorillaArabic,
        sounds: SoundZoo.one,
      ),
      ZooDetails(
        nameEnglish: DataZoo.hippopotamus,
        passimage: ImageZoo.hippopotamus,
        nameArbic: DataZoo.hippopotamusArabic,
        sounds: SoundZoo.two,
      ),
      ZooDetails(
        nameEnglish: DataZoo.hyena,
        passimage: ImageZoo.hyena,
        nameArbic: DataZoo.hyenaArabic,
        sounds: SoundZoo.three,
      ),
      ZooDetails(
        nameEnglish: DataZoo.lion,
        passimage: ImageZoo.lion,
        nameArbic: DataZoo.lionArabic,
        sounds: SoundZoo.four,
      ),
      ZooDetails(
        nameEnglish: DataZoo.monkey,
        passimage: ImageZoo.monkey,
        nameArbic: DataZoo.monkeyArabic,
        sounds: SoundZoo.five,
      ),
      ZooDetails(
        nameEnglish: DataZoo.rhinoceros,
        passimage: ImageZoo.rhinoceros,
        nameArbic: DataZoo.rhinocerosArabic,
        sounds: SoundZoo.six,
      ),
      ZooDetails(
        nameEnglish: DataZoo.tiger,
        passimage: ImageZoo.tiger,
        nameArbic: DataZoo.tigerArabic,
        sounds: SoundZoo.seven,
      ),
      ZooDetails(
        nameEnglish: DataZoo.elephant,
        passimage: ImageZoo.elephant,
        nameArbic: DataZoo.elephantArabic,
        sounds: SoundZoo.eight,
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
