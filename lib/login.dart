import 'package:cash/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 150),
          //LOGO
          Container(

            height: myheight * 0.1, // Added a comma after previous line
            width: mywidth * 0.1, // Added a comma after previous line
            child: Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 10),
          //LOGIN
          Container(
          child: Center(
            child: Text(
              'Login',
              style: large.copyWith(color: tosca),
              textAlign: TextAlign.center,// Corrected style assignment
                ),
              )
            ),

          SizedBox(height: 20),
          //TEXT
          Text(
                  ' Isikan data alamat gmail dan password saat registerasi di form register',
                  textAlign: TextAlign.center,
                  style: small.copyWith(color:black), // Corrected style assignment

                ),

          SizedBox(height: 70),
          //USERNAME
          Text(
              ' Username',
              textAlign: TextAlign.left,
              style: small_bold.copyWith(color:black), // Corrected style assignment

            ),
          SizedBox(height: 5),
          //TEXT FIELD USERNAME
          TextFormField(
                  decoration : InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 14.0 , horizontal: 12.0),
                      border : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: tosca),
                      ),

                      label : Text("isikan username  registrasi" ,
                        style: small,),

                  )
              ),

          SizedBox(height: 20),
          //PASSWORD
          Text(
            ' Password',
            textAlign: TextAlign.left,
            style: small_bold.copyWith(color:black), // Corrected style assignment

          ),
          SizedBox(height: 5),
          //TEXT FIELD PASSWORD
          TextFormField(

            obscureText: true,
              decoration : InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
                  border : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: tosca),
                  ),

                label : Text("isikan password  registrasi",
                  style: small,
                ),
                  suffixIcon: IconButton( onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined , color: orange_sekunder,),)
              )
          ),


          SizedBox(height: 40),
          //BUTTON
          Container(
              width: mywidth, // Added a comma after previous line
              child:  ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: tosca
                ),

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                    "Log In",
                    style:
                    small.copyWith(color: Colors.white)
                ),

              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Anda belum mendaftar!',
                style: small.copyWith(color: Colors.black), // Membetulkan penugasan style
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("Register",
               style: small.copyWith(color:orange),
              ),
              ),
            ],
          ),





        ],

      ),
    );
  }

}
