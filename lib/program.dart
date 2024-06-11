import 'package:cash/theme.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Program extends StatelessWidget {
  const Program({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Program ',
                style: medium.copyWith(color: tosca),
              ),
              TextSpan(
                text: 'Nagari',
                style: medium.copyWith(color: orange),
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // Tindakan ketika teks di klik
                },
                child: Text(
                  '1. Pembangunan Rumah Edukasi Masyarakat',
                  style: small_bold,
                ),
              ),
              const SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
              const SizedBox(height: 20), // Spasi tambahan

              Text(
                'Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
              const SizedBox(height: 20), // Spasi tambahan
            ],
          ),
        ),
      ),
    );
  }
}