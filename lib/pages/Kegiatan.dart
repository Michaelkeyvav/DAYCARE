
import 'package:flutter/material.dart';

class Kegiatan extends StatelessWidget {
  final Map<String, dynamic> kegiatanList;

  Kegiatan({required this.kegiatanList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kegiatan'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'BREAKFAST:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['breakfastSelection']),
              Text(
                'SNACK:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['snackText']),
              Text(
                'LUNCH:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['lunchText']),
              Text(
                'DINNER:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['dinnerText']),
              Text(
                'FLUIDS:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['fluidsText']),
              Text(
                'OTHER:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['otherText']),
              Text(
                'TOILET:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['toiletTimeText']),
              Text(
                'BOTTLE:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['bottleTimeText']),
              Text(kegiatanList['bottleMlText']),
              Text(
                'SHOWER:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['showerText']),
              Text(kegiatanList['afternoonText']),
              Text(
                'NEEDS:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Clothes: ${kegiatanList['needClothes']}'),
              Text(
                'Notes for my Parents:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(kegiatanList['notesText']),
            ],
          ),
        ),
      ),
    );
  }
}
