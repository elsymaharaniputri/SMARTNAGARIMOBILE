import 'package:cash/theme.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? _selectedGender;
  final _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          SizedBox(height: 30),
          SizedBox(height: 10),
          // REGISTER
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'Marilah ',
              style: large.copyWith(color: tosca),
            ),
            Text(
              'Daftar!',
              style: large.copyWith(color: orange),
            ),
          ]),
          SizedBox(height: 20),

          // TEXT
          Text(
            'Isikan data alamat gmail dan password saat registrasi di form register',
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
                  borderSide: BorderSide(color: tosca),
                ),
                label: Text(
                  "isikan nama lengkap sesuai KTP",
                  style: small,
                ),
              )),
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
                  borderSide: BorderSide(color: tosca),
                ),
                label: Text(
                  "isikan nomor NIK",
                  style: small,
                ),
              )),
          SizedBox(height: 20),

          // Tempat Lahir
          Text(
            'Tempat Lahir',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          // TEXT FIELD Tempat Lahir
          TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: tosca),
                ),
                label: Text(
                  "isikan Tempat Lahir",
                  style: small,
                ),
              )),
          SizedBox(height: 20),

          // TTL
          Text(
            ' Tanggal Lahir',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          // TEXT FIELD TTL
          TextFormField(
            controller: _dateController,
            readOnly: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: tosca),
              ),
              label: Text("isikan  tanggal lahir", style: small),
            ),
            onTap: () => _selectDate(context),
          ),
          SizedBox(height: 20),

          // JENIS KELAMIN
          Text(
            'Jenis Kelamin',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color: black),
          ),
          SizedBox(height: 5),
          // DROPDOWN JENIS KELAMIN
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: tosca),
              ),
            ),
            value: _selectedGender,
            hint: Text(
              "Pilih Jenis Kelamin",
              style: small,
            ),
            items: [
              DropdownMenuItem(value: "Laki-Laki", child: Text("Laki-Laki", style: small)),
              DropdownMenuItem(value: "Perempuan", child: Text("Perempuan", style: small)),
            ],
            onChanged: (value) {
              setState(() {
                _selectedGender = value;
              });
            },
          ),
          SizedBox(height: 20),

          // Pekerjaan
          Text(
            'Pekerjaan',
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
                  "isikan pekerjaan saat ini",
                  style: small,
                ),
              )),
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
                  borderSide: BorderSide(color: tosca),
                ),
                label: Text(
                  "isikan alamat rumah saat ini",
                  style: small,
                ),
              )),
          SizedBox(height: 20),

          // Alamat Email
          Text(
            'Alamat Email',
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
                  "isikan alamat gmail aktif saat ini (opsional)",
                  style: small,
                ),
              )),
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
              child: Text("Register", style: small.copyWith(color: Colors.white)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Anda sudah mendaftar?',
                style: small.copyWith(color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Login",
                  style: small.copyWith(color: orange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
