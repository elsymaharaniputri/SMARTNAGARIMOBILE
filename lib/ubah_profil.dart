import 'package:flutter/material.dart';
import 'profil.dart';

class UbahProfil extends StatefulWidget {
  @override
  _UbahProfilState createState() => _UbahProfilState();
}

class _UbahProfilState extends State<UbahProfil> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Ubah ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: 'Profil',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              ProfileTextField(controller: _nameController, label: 'Nama'),
              SizedBox(height: 10),
              ProfileTextField(controller: _nikController, label: 'NIK'),
              SizedBox(height: 10),
              ProfileTextField(controller: _emailController, label: 'Alamat Gmail'),
              SizedBox(height: 10),
              ProfileTextField(controller: _usernameController, label: 'Username'),
              SizedBox(height: 10),
              PasswordField(controller: _passwordController, label: 'Password'),
              SizedBox(height: 10),
              PasswordField(controller: _confirmPasswordController, label: 'Konfirmasi Password'),
              SizedBox(height: 20),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       if (_formKey.currentState!.validate()) {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ProfilPage(
              //               name: _nameController.text,
              //               nik: _nikController.text,
              //               email: _emailController.text,
              //               username: _usernameController.text,
              //             ),
              //           ),
              //         );
              //       }
              //     },
              //     child: Text('Simpan'),
              //     style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.black, backgroundColor: Colors.yellow, // Mengubah warna teks menjadi hitam
              //   ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  ProfileTextField({required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kolom ini harus diisi';
            }
            return null;
          },
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  PasswordField({required this.controller, required this.label});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: widget.controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: widget.label,
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: _toggleVisibility,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kolom ini harus diisi';
            }
            return null;
          },
        ),
      ),
    );
  }
}
