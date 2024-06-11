import 'package:cash/home.dart';
import 'package:cash/theme.dart';
import 'package:flutter/material.dart';

class KepengurusanPage extends StatelessWidget {
  const KepengurusanPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: small_bold,
            children: [
              TextSpan(
                text: 'Kepengurusan ',
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
            children: [
              Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0), // Set the desired border radius here
                      child: Image.asset(
                        'assets/images/jorong2.jpeg',
                        fit: BoxFit.cover,
                        width: 257,
                        height: 173,
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20), // Spasi tambahan
              Center(
                child: Text(
                  'Wali Nagari',
                  style: small_bold,
                ),
              ),
              const SizedBox(height: 10), // Spasi di antara teks
              Center(
                child: Text(
                  'Yogen no Ko The Lord Black Shadow',
                  style: small,
                ),
              ),
              const SizedBox(height: 20), // Spasi tambahan
            ],
          ),
        ),
      ),
    );
  }
}
