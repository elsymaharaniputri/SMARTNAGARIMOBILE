import 'package:cash/theme.dart';
import 'package:flutter/material.dart';

class Wisata extends StatelessWidget {
  const Wisata({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Wisata ',
                style: medium.copyWith(color: tosca), // Warna teks program
              ),
              TextSpan(
                text: 'Nagari',
                style: medium.copyWith(color: orange), // Warna teks nagari
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Tindakan untuk kembali ke layar sebelumnya
          Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '1. Air Terjun Timbulun ',
                style: small_bold,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Lokasi: Alahan Panjang, Jorong Tabek',
                style: small,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
              SizedBox(height: 10),
              Text(
                '2. Air Terjun Puti ',
                style: small_bold,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Lokasi: Alahan Panjang, Jorong Tabek',
                style: small,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
              SizedBox(height: 10),
              Text(
                '3. Rumah Batik',
                style: small_bold,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Lokasi: Alahan Panjang, Jorong Tabek',
                style: small,
              ),
              SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
