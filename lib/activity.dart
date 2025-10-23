import 'package:flutter/material.dart';

class Activitipage extends StatefulWidget {
  const Activitipage({super.key});

  @override
  State<Activitipage> createState() => _ActivitipageState();
}

class _ActivitipageState extends State<Activitipage> {

  final List<Map<String, dynamic>> produkList = [
    {
      "kode_produk": "PRD-001",
      "deskripsi": "Good Day Freeze",
      "harga": 15000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/001.jpg"
    },
    {
      "kode_produk": "PRD-002",
      "deskripsi": "Kapal Api",
      "harga": 20000,
      "stok": 6,
      "rating": 4.7,
      "gambar": "gambar/002.jpg"
    },
    {
      "kode_produk": "PRD-003",
      "deskripsi": "Torabika Coffee",
      "harga": 21000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/003.jpg"
    },
    {
      "kode_produk": "PRD-004",
      "deskripsi": "Pikopi",
      "harga": 13000,
      "stok": 5,
      "rating": 4.4,
      "gambar": "gambar/004.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 🔹 Logo Header
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
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.blueAccent.shade700,
                          ),
                        ),
                        Text(
                          "MART",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.red.shade700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // 🔹 Daftar Produk
              Column(
                children: produkList.map((produk) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Image.asset(
                        produk["gambar"],
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        produk["deskripsi"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Harga: Rp ${produk["harga"]}\nStok: ${produk["stok"]} | Rating: ${produk["rating"]}",
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
