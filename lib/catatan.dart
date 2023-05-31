// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Catatan extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late  String kondisi;

  // ignore: non_constant_identifier_names
  Catatan({super.key, required this.kondisi});

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
              'Kondisi: $kondisi',
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
    home: Catatan(
      kondisi : 'oke',
    ),
  ));
}