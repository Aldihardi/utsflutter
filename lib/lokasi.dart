import 'package:flutter/material.dart';

class Lokasi extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late  String cari;

  // ignore: non_constant_identifier_names
  Lokasi({super.key, required this.cari});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catatan/note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cari Lokasi Isolasi Mandiri: $cari',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Lokasi(
      cari : 'oke',
    ),
  ));
}