import 'package:flutter/material.dart';
import 'package:utsflutter/gejala.dart';
import 'package:utsflutter/lokasi.dart';
import 'package:utsflutter/profile.dart';
import 'package:utsflutter/catatan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isolasi Mandiri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Selamat datang di aplikasi Isolasi Mandiri Covid-19',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman Profile Data Pribadi
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        Profile(Name: 'Moch Aldi Hardiansyah', gender: 'male',
                            age: 25, address: 'Bekasi')));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Data Diri',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 14.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    Gejala(Demam: 'Tidak',
                    Batuk : 'Tidak', Pilek: 'Tidak' , Suhu: 'Tidak')));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Cek Gejala',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        Catatan(kondisi: ' Kondisi Tubuh dalam keadaan sehat dan prima'
                            'teteap jaga kesehatan dengan selalu menggunkan masker dan '
                            'jaga jarak dengan orang lain',)));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Catatan Harian',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Lokasi(cari: 'Mencari Lokasi Isolasi Mnadiri dengana Maps',)));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Lokasi Isolasi',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}