import 'package:cash/theme.dart';
import 'package:flutter/material.dart';
import 'ubah_profil.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Profil',
            style: medium.copyWith(color: tosca)
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/jorong2.jpeg'), // Ganti dengan path gambar profil
              ),
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama'),
                subtitle: Text('Sasuke'),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('NIK'),
                subtitle: Text('Sasuke'),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Alamat Gmail'),
                subtitle: Text('Sasuke'),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Username'),
                subtitle: Text('username'),
              ),
            ),
            SizedBox(height: 20),

            //KALO BISA BIKIN
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => UbahProfil()),
            //       );
            //     },
            //     child: Text('Ubah Profil'),
            //     style: ElevatedButton.styleFrom(
            //       foregroundColor: Colors.black,
            //       backgroundColor: Colors.yellow, // Mengubah warna teks menjadi hitam
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
