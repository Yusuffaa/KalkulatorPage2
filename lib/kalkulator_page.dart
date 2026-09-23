import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Kalkulator MBG")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Nilai 1"))
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Nilai 2"))
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Tambah",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 115, 240), fontWeight: FontWeight.bold,),)),
              ElevatedButton(onPressed: () {}, child: Text("Kurang",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 238, 110), fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: () {}, child: Text("Kali",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 115, 240), fontWeight: FontWeight.bold,),)),
              ElevatedButton(onPressed: () {}, child: Text("Bagi",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 238, 110), fontWeight: FontWeight.bold),)),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Hasil"))
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {}, child: Text("Reset",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 115, 240), fontWeight: FontWeight.bold,),)),
          ),       
        ]


      ),
    );
  }
}