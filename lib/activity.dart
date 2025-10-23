import 'package:flutter/material.dart';

class Activitipage extends StatefulWidget {
  const Activitipage({super.key});

  @override
  State<Activitipage> createState() => _ActivitipageState();
}

class _ActivitipageState extends State<Activitipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                children: [
                 const SizedBox(height: 10),
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("gambar/Logo.png", height: 80, width: 80),                       
                          Text(
                            "LKS ",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Colors.blueAccent.shade700), 
                          ),
                          Text(
                            "MART",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Colors.red.shade700), 
                          ),
                        ],
                      ),
                ],

              ),
            )
          ],
              {
      "kode_produk":"PRD-001",
      "deskripsi":"Good Day Freeze",
      "harga":15000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/001.jpg"
    },
    {
      "kode_produk":"PRD-002",
      "deskripsi":"Kapal Api",
      "harga":20000,
      "stok":6,
      "rating":4.7,
      "gambar":"gambar/002.jpg"
    },
    {
      "kode_produk":"PRD-003",
      "deskripsi":"Torabika Coffee",
      "harga":21000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/003.jpg"
    },
    {
      "kode_produk":"PRD-004",
      "deskripsi":"Pikopi ",
      "harga":13000,
      "stok":5,
      "rating":4.4,
      "gambar":"gambar/004.jpg"
    },
    
  ];
        ),
        ),
      ),
    );
  }
}