import 'package:cash/kepengurusan.dart';
import 'package:cash/pengaduan.dart';
import 'package:cash/produk.dart';
import 'package:cash/profil.dart';
import 'package:cash/program.dart';
import 'package:cash/statusSurat.dart';
import 'package:cash/suratMeninggalDunia.dart';
import 'package:cash/suratPenghasilan.dart';
import 'package:cash/suratPindahDomisili.dart';
import 'package:cash/suratTidakMampu.dart';
import 'package:cash/theme.dart';
import 'package:cash/wisata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
      // leading: Icon(Icon.e),
      ),
      drawer: Drawer(
          child:  ListView(
            children: [
              Padding(padding: EdgeInsets.only(top: 30,bottom: 20,)),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30)),
                  Text(
                    'Smart ',
                    style: medium.copyWith(color: tosca),
                  ),
                  Text(
                    'Nagari ',
                    style: medium.copyWith(color: orange),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){ Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProfilPage()),
              );},),
              ListTile(
                leading: Icon(Icons.holiday_village_sharp),
                title: Text("Wisata"),
                onTap: (){ Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Wisata()),
                );},),
              ListTile(
                leading: Icon(Icons.chat_bubble_outline),
                title: Text("Pengaduan"),
                onTap: (){ Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Pengaduan()),
                );},),
            ],
          )
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 70),
            //WELCOME
            Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text(
                  'Welcome ',
                  style: medium.copyWith(color: tosca),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text(
                  'Smart ',
                  style: medium.copyWith(color: tosca),
                ),
                Text(
                  'Citizen..!',
                  style: medium.copyWith(color: orange),
                ),
              ],
            ),
            SizedBox(height: 10),

            //HERO CORAUSEL
            CarouselSlider(
              options: CarouselOptions(
                height: 190.0,
                viewportFraction: 1,
                autoPlay: true,
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20.0),
                        width: mywidth * 0.9,
                        height: myheight * 0.2,
                        decoration: BoxDecoration(
                          color : tosca,
                          border: Border(
                            top: BorderSide(
                              color: orange,
                              width: 4,
                            ),
                          ),
                        ),
                        child: SingleChildScrollView (
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Berita  ',
                                style: small_bold.copyWith(color: Colors.white),
                              ),
                              Text(
                                'Terkini Nagari $i',
                                style: small_bold.copyWith(color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum is simply dummy text of the printing and typesettingLorem Ipsum is simply dummy text of the printing and typesettingLorem Ipsum is simply dummy text of the printing and typesetting..Lorem Ipsum is simply dummy text of vission-mission',
                                style: small.copyWith(color: Colors.white),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              GestureDetector(
                                onTap: () {
                                  // Tindakan yang akan dilakukan saat tautan diklik
                                },
                                child: Text(
                                  "Lihat selengkapnya..",
                                  style: small.copyWith(color:orange_sekunder),

                                ),
                              ),
                            ],
                          ),
                        ),

                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 30),

            // PROFILE NAGARI
            Container(
              alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Profil Nagari",
                style: medium.copyWith(color: tosca),
              ),
            ),
            SizedBox(height: 10),
            //TAB BAR
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox (
                      width: MediaQuery.of(context).size.width,
                      child: TabBar(
                        controller: controller,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: tosca,

                        ),
                        indicatorSize: TabBarIndicatorSize.tab, // Menyesuaikan ukuran indicator menjadi lebar tab
                        indicatorWeight: 1.0, // Mengatur lebar box indicato,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        labelPadding: EdgeInsets.symmetric(horizontal: 5.0), // lebarkan label / tuisan
                        tabs: [
                          Tab(text: "Lokasi"),
                          Tab(text: "Produk"),
                          Tab(text: "Pegawai"),
                          Tab(text: "Program"),
                          Tab(text: "Wisata"),
                        ],

                      ),
                    ),
                  ],
                ),
              ),


            ),
            Container(
              width: double.maxFinite,
              height: 244,
              child: TabBarView(
                controller: controller,
                children: [
                  // Lokasi
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tosca_primer,
                        width: 1.0,

                      ),
                      borderRadius: BorderRadius.circular(15.0),

                    ),

                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lokasi Nagari", style: small_bold),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Isi untuk lokasi Nagari
                                Text("Deskripsi atau informasi tambahan di sini", style: small),
                                // Tambahkan widget lain sesuai kebutuhan
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Produk
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tosca_primer,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kuliner Gula Aren", style: small_bold),
                        SizedBox(height: 10),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting..Lorem Ipsum is simply dummy text of vission-mission ",
                          maxLines: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Produk()));
                          },
                          child: Text(
                            "Lihat lebih banyak..",
                            style: small.copyWith(color: tosca),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Pegawai
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tosca_primer,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wali Nagari", style: small_bold),
                        Text("Dr.Budi Syahkuala Alam "),
                        SizedBox(height: 10),
                        Text("Kepala Jorong ", style: small_bold),
                        Text("Dr.Budi Syahkuala Alam "),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => KepengurusanPage()));
                          },
                          child: Text(
                            "Lihat lebih banyak..",
                            style: small.copyWith(color: tosca_primer),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Program
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tosca_primer,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pembangunan Rumah Edukasi Masyarakat", style: small_bold),
                        // Isi untuk program Nagari
                        Text(
                          "Dicanangkan 2024 , tepatnya akhir desember akan dibangun rumah edukasi masyarakat di jorong  ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Program()));
                          },
                          child: Text(
                            "Lihat lebih banyak..",
                            style: small.copyWith(color: tosca_primer),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Wisata
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tosca_primer,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Air Terjun Timbulun", style: small_bold),
                        // Isi untuk wisata Nagari
                        Text(
                          "Berada 5km dari Jorong Talang , air terjun ini memiliki pesona menarik yang instagramable ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Wisata()));
                          },
                          child: Text(
                            "Lihat lebih banyak..",
                            style: small.copyWith(color: tosca),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            // LAYANAN
            Container(
              alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Kategori Layanan",
                style: medium.copyWith(color: tosca),
              ),
            ),
            //SURAT 1 DAN 2
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Row(
                children: [
                  //Surat Pindah Domisli
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : orange_tersier,
                        border: Border(
                          top: BorderSide(
                            color: orange,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Pindah Domisli',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tentukan kebutuhan surat anda ',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),
                            //PILIH
                            Container(

                              height: 26.0,

                              child: Center(
                                  child:  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        backgroundColor: tosca,

                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuratPindahDomisili()));
                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  ),


                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10),

                  //Surat Keterangan Nikah
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : tosca_sekunder,
                        border: Border(
                          top: BorderSide(
                            color: tosca,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Keterangan Nikah ',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tuliskan kebutuhan surat anda',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),
                            Container(

                              height: 32.0,
                              child: Center(
                                  child:  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: tosca,
                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuratPindahDomisili()));

                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  )
                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),


                ],
              ),

            ),

            //SURAT 3 DAN 4
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Row(
                children: [

                  //Surat KETERANGAN TIDAK MAMPU
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : tosca_sekunder,
                        border: Border(
                          top: BorderSide(
                            color: tosca,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Keterangan Tidak Mampu ',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tuliskan kebutuhan surat anda',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),
                            Container(

                              height: 32.0,
                              child: Center(
                                  child:  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: tosca,
                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuratTidakMampu()));

                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  )
                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10),
                  //Surat KETERANGAN PENGHASILAN
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : orange_tersier,
                        border: Border(
                          top: BorderSide(
                            color: orange,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Keterangan Penghasilan ',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tuliskan kebutuhan surat anda',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),
                            Container(

                              height: 32.0,
                              child: Center(
                                  child:  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: tosca,
                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuratPenghasilan()));

                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  )
                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),


                ],
              ),

            ),

            //SURAT 5 DAN 6
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Row(
                children: [

                  //Surat KETERANGAN MENINGGAL DUNIA
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : orange_tersier,
                        border: Border(
                          top: BorderSide(
                            color: orange,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Keterangan Meninggal Dunia ',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tentukan Kebutuhan Surat Anda',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),

                            Container(

                              height: 32.0,
                              child: Center(
                                  child:  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: tosca,
                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuratMeninggalDunia()));

                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  )
                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10),
                  //Surat PENGADUAN
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 10.0),
                      width: mywidth * 0.45,
                      height: myheight * 0.28,
                      decoration: BoxDecoration(
                        color : tosca_sekunder,
                        border: Border(
                          top: BorderSide(
                            color: tosca,
                            width: 4,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Surat Keterangan Pengaduan',
                              style: small_bold.copyWith(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tuliskan keluhan anda dengan bijak',
                              style: small.copyWith(color: Colors.black54),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 30),
                            Container(

                              height: 32.0,
                              child: Center(
                                  child:  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: tosca,
                                    ),

                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pengaduan()));

                                    },
                                    child: Text(
                                        "Pilih",
                                        style:
                                        small.copyWith(color: Colors.white)
                                    ),

                                  )
                              ),
                            ),
                            SizedBox(height: 8),
                            //STATUS
                            Container(

                              height: 26.0,
                              child: Center(
                                child:  ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      backgroundColor: orange_sekunder
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StatusSurat()));
                                  },
                                  child: Text(
                                      "Status",
                                      style:
                                      small.copyWith(color: Colors.white)
                                  ),

                                ),


                              ),
                            ),
                          ],

                        ),
                      ),

                    ),
                  ),



                ],
              ),

            ),


          ],
        ),
      ),

    );

  }
}