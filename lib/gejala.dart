// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Gejala extends StatelessWidget {
  late  String Demam;
  late  String Batuk;
  late  String Pilek;
  late  String Suhu;

  Gejala ({super.key, required this.Demam,
    required this.Batuk, required this.Pilek, required this.Suhu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gejala Covid-19'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demam: $Demam',
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Batuk: $Batuk',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Pilek: $Pilek',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Suhu: $Suhu',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Gejala(
      Demam: 'Tidak',
      Batuk: 'Tidak',
      Pilek: 'Tidak',
      Suhu: '32',
    ),
  ));
}