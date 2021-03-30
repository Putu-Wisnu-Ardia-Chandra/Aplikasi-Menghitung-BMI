import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'identitas.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  String jenisKelamin;
  String tanggalLahir;
  String umur;

  var _nama = new TextEditingController();
  var _jk = new TextEditingController();
  var _tl = new TextEditingController();
  var _um = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        //backgroundColor: Colors.blue[100],
        appBar: AppBar(
          //backgroundColor: Colors.blue[100],
          centerTitle: true,
          leading: Icon(
            Icons.home,
            color: Colors.yellow,
          ),
          title: Text('BMI Calculator'),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('assets/BMI.png',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                //color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('cm'),
                              fillColor: Colors.yellowAccent [900],
                              filled: true,
                              hintText: 'Tinggi Badan'),
                        ),
                      ),

                      SizedBox(
                        width: 5,
                      ),

                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('kg'),
                              fillColor: Colors.orangeAccent [900],
                              filled: true,
                              hintText: 'Berat Badan'),
                        ),
                      ),
                    ],
                  )),

              Container(
                // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: _nama,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              fillColor: Colors.yellowAccent [900],
                              filled: true,
                              hintText: 'Nama Pengguna'),
                        ),
                      ),

                      SizedBox(
                        width: 5,
                      ),

                      Expanded(
                        child: TextField(
                          controller: _jk,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              fillColor: Colors.orangeAccent [900],
                              filled: true,
                              hintText: 'Jenis Kelamin'),
                        ),
                      ),
                    ],
                  )),

              Container(
                // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: _tl,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              fillColor: Colors.orangeAccent [900],
                              filled: true,
                              hintText: 'Tanggal Lahir'),
                        ),
                      ),
                    ],
                  )),

              Container(
                // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: _um,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              fillColor: Colors.orangeAccent [900],
                              filled: true,
                              hintText: 'Umur Pengguna'),
                        ),
                      ),
                    ],
                  )),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 10,right: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat, nama_pengguna:_nama.text, jenis_kelammin:_jk.text, tanggal_lahir:_tl.text, umur:_um.text)),
                    );
                  },

                  color: Colors.blueAccent,
                  textColor: Colors.black,
                  child: Text(
                    'Calculate BMI',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 10,right: 10, top: 10, bottom: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HalamanSatu()),
                    );
                  },

                  color: Colors.white,
                  textColor: Colors.black,
                  child: Text(
                    'About',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          //color: Colors.transparen,
          child: Container(
            height: 30,
            color: Colors.black,
            alignment: Alignment.center,
            child: Text(
              'Developed by Putu Wisnu Ardia Chandra',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}