import 'package:cash/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
         child:  Padding(
            padding:const EdgeInsets.all(20) ,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  //LOGO
                  Container(

                    height: myheight * 0.2, // Added a comma after previous line
                    width: mywidth * 0.2, // Added a comma after previous line
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),

                  //TEXT
                  Text(
                    'Smart Nagari',
                    style: large.copyWith(color: tosca), // Corrected style assignment
                  ),
                  SizedBox(height: 10),

                  //TEXT
                  Text(
                    ' Lorem Ipsum is simply dummy text of the printing and typesetting..Lorem Ipsum is simply dummy text of',
                    style: small.copyWith(color: black),
                    textAlign: TextAlign.center,
                    // Corrected style assignment
                  ),

                  SizedBox(height: 200),
                  Container(
                      width: mywidth, // Added a comma after previous line
                      child:  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: tosca
                        ),

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                            "Next",
                            style:
                            small.copyWith(color: Colors.white)
                        ),

                      )
                  )
                ]
            ),
          ),

          ),
          )

      );
  }

}
