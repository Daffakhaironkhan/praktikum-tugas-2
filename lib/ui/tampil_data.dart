import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String name;
  final String nim;
  final String birthYear;

  TampilData({
    required this.name,
    required this.nim,
    required this.birthYear,
  });

  int hitungUsia() {
    int yearNow = DateTime.now().year;
    return yearNow - int.parse(birthYear);
  }

  @override
  Widget build(BuildContext context) {
    int usia = hitungUsia(); // Hitung usia saat widget diinisialisasi

    return Scaffold(
      appBar: AppBar(
        title: Text('Perkenalan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama saya $name, NIM $nim, dan umur saya $usia tahun'),
          ],
        ),
      ),
    );
  }
}
