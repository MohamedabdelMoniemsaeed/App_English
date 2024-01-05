import 'package:flutter/material.dart';
import 'package:tuko/models/data_family.dart';
import 'package:tuko/screen/details/details.dart';
import 'package:tuko/screen/numbers/widget/numberrow.dart';
import 'package:tuko/theme/image_family.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NumberRow> item = [
      NumberRow(
        nameEnglish: DataFamily.daughter,
        images: ImageFamily.daughter,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.daughter,
                      nameEnglish: DataFamily.daughter,
                      nameArbic: "بنت")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.father,
        images: ImageFamily.father,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.father,
                      nameEnglish: DataFamily.father,
                      nameArbic: "أب")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.mother,
        images: ImageFamily.mother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.mother,
                      nameEnglish: DataFamily.mother,
                      nameArbic: "الأم")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.son,
        images: ImageFamily.son,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.son,
                      nameEnglish: DataFamily.son,
                      nameArbic: "ابن")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.grandfather,
        images: ImageFamily.grandfather,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.grandfather,
                      nameEnglish: DataFamily.grandfather,
                      nameArbic: "جد")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.grandmother,
        images: ImageFamily.grandmother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.grandmother,
                      nameEnglish: DataFamily.grandmother,
                      nameArbic: "جدة")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.olderbrother,
        images: ImageFamily.olderbrother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.olderbrother,
                      nameEnglish: DataFamily.olderbrother,
                      nameArbic: "الأخ \n الأكبر")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.oldersister,
        images: ImageFamily.oldersister,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      passimage: ImageFamily.oldersister,
                      nameEnglish: DataFamily.oldersister,
                      nameArbic: "الأخت\nالكبرى")));
        },
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink[400],
        title: const Text(
          'Family',
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