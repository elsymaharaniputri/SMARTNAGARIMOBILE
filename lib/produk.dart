import 'package:cash/theme.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Produk extends StatelessWidget {
  const Produk({super.key});

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
                text: 'Produk ',
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
              Text(
                '1. Kuliner Gula Aren',
                style: small_bold,
              ),
              const SizedBox(height: 10), // Spasi di antara teks
              Text(
                'Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong. Dicanangkan tahun 2024, tepatnya akhir Desember akan dibangun rumah edukasi masyarakat di jorong.',
                style: small,
              ),
              const SizedBox(height: 20), // Spasi tambahan
              Text(
                '2. Kuliner Paku Balado',
                style: small_bold,
              ),
              const SizedBox(height: 10), // Spasi di antara teks
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
