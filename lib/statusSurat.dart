

import 'package:cash/home.dart';
import 'package:cash/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class StatusSurat extends StatelessWidget {
  const StatusSurat({Key? key});
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final String redirectUrl = 'https://scholar.google.com/';
    //METODE LINK KE WEB UNYUK UNDUH
    Future<void> launchUrl(String url) async {
      try {
        await launch(url);
      } catch (e) {
        print('Could not launch $url');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: small_bold,
            children: [
              TextSpan(
                text: 'Status  ',
                style: medium.copyWith(color: tosca), // Warna teks program
              ),
              TextSpan(
                text: 'Pengajuan Surat',
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
      child: Center(
        child: Column(
           children: [

             Container(
               margin: EdgeInsets.only(top: 10),
               height: 150,
               padding: EdgeInsets.symmetric(horizontal: 20.0 ),
               child: TimelineTile(
                 alignment: TimelineAlign.start,
                   endChild: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(padding: EdgeInsets.only(top: 50.0)),
                       Text('Pengajuan Diterima', style: small_bold),
                       Text('Harap pantau terus proses pengajuan anda ', style: small),
                     ],
                   ),
                 beforeLineStyle:LineStyle(color: tosca) ,
                 afterLineStyle: LineStyle(color: tosca),
                 indicatorStyle: IndicatorStyle(
                     color: orange,
                      width: 40,
                      iconStyle:IconStyle(iconData:Icons.check_circle_rounded,color: Colors.white)
                 ),
                 isFirst: true,


               ),
             ),
             Container(

               height: 150,
               padding: EdgeInsets.symmetric(horizontal: 20.0 ),
               child: TimelineTile(
                 alignment: TimelineAlign.start,
                 endChild: Column(

                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(padding: EdgeInsets.only(top: 50.0)),
                     Text('Pengajuan Diproses', style: small_bold),
                     Text(' Data sudah lolos verifikasi ', style: small),
                   ],
                 ),
                 beforeLineStyle:LineStyle(color: tosca) ,
                 afterLineStyle: LineStyle(color: Colors.grey),
                 indicatorStyle: IndicatorStyle(
                     color: Colors.black12,
                     width: 40,
                     iconStyle:IconStyle(iconData:Icons.check_circle_rounded,color: Colors.white)
                 ),


               ),
             ),
             Container(
               height: 150,
               padding: EdgeInsets.symmetric(horizontal: 20.0 ),
               child: TimelineTile(
                 alignment: TimelineAlign.start,
                 endChild: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(padding: EdgeInsets.only(top: 50.0)),
                     Text('Surat Diterbitkan', style: small_bold),
                     Text(' Surat sudah bisa diambil pada 19 Mei 2024  ', style: small),
                   ],
                 ),
                 beforeLineStyle:LineStyle(color: Colors.grey) ,
                 afterLineStyle: LineStyle(color: Colors.grey),
                 indicatorStyle: IndicatorStyle(
                     color: Colors.black12,
                     width: 40,
                     iconStyle:IconStyle(iconData:Icons.check_circle_rounded,color: Colors.white)
                 ),
                 isLast: true,



               ),

             ),
             //BUTTON
             Center(
               child: Container(
                   width: mywidth * 0.3, // Added a comma after previous line
                   child:  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20)),
                         backgroundColor: Colors.grey
                     ),


                     ///GANTI LINKNYA DENGAN LINK WEB TUJUAN UNTUK UNDUH

                     onPressed: () async {
                       await launchUrl('https://example.com');
                     },


                     child: Text(
                         "Unduh ",
                         style:
                         small.copyWith(color: Colors.white)
                     ),

                   )
               ),
             ),
           ],
        ),
      ),
      ),
    );
  }
}
