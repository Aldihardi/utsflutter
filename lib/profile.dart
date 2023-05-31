// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late  String Name;
  late  String gender;
  late  int age;
  late  String address;

   // ignore: non_constant_identifier_names
   Profile({super.key, required this.Name, required this.gender, required this.age, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: $Name',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Gender: $gender',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Age: $age',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Address: $address',
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
    home: Profile(
      Name: 'Moch Aldi Hardiansyah',
      gender: 'Male',
      age: 25,
      address: ' Bekasi, City',
    ),
  ));
}