import 'package:cash/theme.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';
class Pengaduan extends StatelessWidget {
  const Pengaduan({super.key});

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      ListView(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
        children: [
          SizedBox(height: 30),
          SizedBox(height: 10),
          // REGISTER
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Keterangan ',
              style: large.copyWith(color: tosca),
            ),
            Text(
              'Pengaduan',
              style: large.copyWith(color: orange),
            ),
          ]),
          SizedBox(height: 20),

          // TEXT
          Text(
            'Isikan data dengan tepat sesuai kondisi sebenarnya.',
            textAlign: TextAlign.start,
            style: small.copyWith(color: black),
          ),
          SizedBox(height: 40),

          // Nama
          Text(
            'Nama',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          // TEXT FIELD Nama
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.lightBlueAccent), // Assuming 'tosca' translates to light blue accent
              ),
              hintText: Text("Sasuke Uchiha",style: small).data,

            ),
          ),
          SizedBox(height: 20),

          // NIK
          Text(
            'NIK',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          // TEXT FIELD NIK
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.lightBlueAccent), // Assuming 'tosca' translates to light blue accent
              ),
              hintText: Text("1122200200",style: small).data,

            ),
          ),
          SizedBox(height: 20),


          // Alamat
          Text(
            'Alamat',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.lightBlueAccent), // Assuming 'tosca' translates to light blue accent
              ),
              hintText: Text("Jorong A,Nagari AB",style: small).data,

            ),
          ),
          SizedBox(height: 20),


          // Alasan Keluhan
          Text(
            'Keluhan ',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: tosca),
              ),
              label: Text(
                "isikan keluhan anda dengan bijak",
                style: small,
              ),
            ),
            maxLines: 5,  // Menentukan jumlah baris maksimum
          ),
          SizedBox(height: 40),


          // BUTTON
          Container(
            width: mywidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: tosca),
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.confirm,
                  text: 'Data yang terkirim tidak bisa diubah dan akan diproses',
                  confirmBtnText: 'Kirim',
                  cancelBtnText: 'Belum',
                  confirmBtnColor: tosca_primer,
                  title: 'Anda Yakin?',
                  backgroundColor: orange_sekunder,
                );
              },
              child: Text("Submit", style: small.copyWith(color: Colors.white)),
            ),
          ),

        ],

      ),
    );
  }

}
