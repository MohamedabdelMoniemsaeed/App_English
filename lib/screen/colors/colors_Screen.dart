import 'package:flutter/material.dart';
import 'package:tuko/models/colors/data_colors.dart';
import 'package:tuko/models/colors/image_colors.dart';
import 'package:tuko/models/colors/sound_colors.dart';
import 'package:tuko/screen/details/details.dart';
import 'package:tuko/screen/numbers/widget/numberrow.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NumberRow> item = [
      NumberRow(
        nameEnglish: DataColors.black,
        images: ImageColors.black,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.black,
                      passimage: ImageColors.black,
                      nameEnglish: DataColors.black,
                      nameArbic: 'اسود')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.brown,
        images: ImageColors.brown,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.brown,
                      passimage: ImageColors.brown,
                      nameEnglish: DataColors.brown,
                      nameArbic: 'بني')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.dustyyellow,
        images: ImageColors.dustyyellow,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.dustyyellow,
                      passimage: ImageColors.dustyyellow,
                      nameEnglish: DataColors.dustyyellow,
                      nameArbic: 'أصفر\nمغبر')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.gray,
        images: ImageColors.gray,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.gray,
                      passimage: ImageColors.gray,
                      nameEnglish: DataColors.gray,
                      nameArbic: 'رمادي')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.green,
        images: ImageColors.green,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.green,
                      passimage: ImageColors.green,
                      nameEnglish: DataColors.green,
                      nameArbic: 'اخضر')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.red,
        images: ImageColors.red,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.red,
                      passimage: ImageColors.red,
                      nameEnglish: DataColors.red,
                      nameArbic: 'احمر')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.white,
        images: ImageColors.white,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.white,
                      passimage: ImageColors.white,
                      nameEnglish: DataColors.white,
                      nameArbic: 'ابيض')));
        },
      ),
      NumberRow(
        nameEnglish: DataColors.yellow,
        images: ImageColors.yellow,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundColors.yellow,
                      passimage: ImageColors.yellow,
                      nameEnglish: DataColors.yellow,
                      nameArbic: 'أصفر')));
        },
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink[400],
        title: const Text(
          'Colors',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => item[index],
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}
