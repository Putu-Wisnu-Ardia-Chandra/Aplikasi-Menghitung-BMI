import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  // ignore: non_constant_identifier_names
  BMIResult({@required this.tinggi_badan, @required this.berat_badan,  @required this.nama_pengguna, @required this.jenis_kelammin, @required this.tanggal_lahir, @required this.umur});
  // ignore: non_constant_identifier_names
  final int berat_badan;
  // ignore: non_constant_identifier_names
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  final String nama_pengguna;
  // ignore: non_constant_identifier_names
  final String jenis_kelammin;
  // ignore: non_constant_identifier_names
  final String tanggal_lahir;
  final String umur;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obese";
    else if (bmi>=23) cBMI="Overweight";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Results'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              // ignore: unnecessary_brace_in_string_interps
              '${nama_pengguna}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.lightGreenAccent,
              ),
            ),

            new Text(
              // ignore: unnecessary_brace_in_string_interps
              '${jenis_kelammin}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),

            new Text(
              // ignore: unnecessary_brace_in_string_interps
              '${umur}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.yellow,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              '17.5 -  22.9',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Colors.black,
          child: Text('Back',
            style: TextStyle(
                fontSize: 25
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}