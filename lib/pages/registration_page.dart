import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtKelas = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtNowa = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Registration Form",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              SizedBox(height: 20),
        
              TextField(
                controller: txtNama,
                decoration: InputDecoration(
                  hintText: "Input Nama",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 12),
        
              TextField(
                controller: txtAlamat,
                decoration: InputDecoration(
                  hintText: "Input Alamat",
                  prefixIcon: Icon(Icons.home),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 12),
        
              TextField(
                controller: txtKelas,
                decoration: InputDecoration(
                  hintText: "Input Kelas",
                  prefixIcon: Icon(Icons.school),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 12),
        
              TextField(
                controller: txtJenisKelamin,
                decoration: InputDecoration(
                  hintText: "Input Jenis Kelamin",
                  prefixIcon: Icon(Icons.people),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 12),
        
              TextField(
                controller: txtNowa,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: "Input Nomor Wa",
                  prefixIcon: Icon(Icons.phone),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 12),
        
              TextField(
                controller: txtEmail,
                decoration: InputDecoration(
                  hintText: "Input Email",
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.confirmRegistration, arguments:{
                      "nama": txtNama.text.toString(),
                      "alamat": txtAlamat.text.toString(),
                      "kelas": txtKelas.text.toString(),
                      "jenisKelamin": txtJenisKelamin.text.toString(),
                      "nowa": txtNowa.text.toString(),
                      "email": txtEmail.text.toString(),             
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

