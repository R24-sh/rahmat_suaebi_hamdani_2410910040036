import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _TextBoxPageState();
}

class _TextBoxPageState extends State<DaftarPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _showPassword = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _namaController =TextEditingController();
  final TextEditingController _alamatController =TextEditingController();
  final TextEditingController _userrnameController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Form(
            key: _formKey,
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
                      const SizedBox(height: 48),
                      const Text(
                        "Daftar",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      const Text(
                        "Silakan Isis Data Pribadi Anda",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),

                const Text(
                  "Nama Lengkap",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                const Text(
                  "Alamat",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _alamatController,
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                     const Text(
                  "Userrname",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _userrnameController,
                  decoration: InputDecoration(
                    hintText: "userrname",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),


                const SizedBox(height: 24),

                const Text(
                  "Password*", 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromARGB(221, 52, 2, 2)),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _showPassword,
                  decoration: InputDecoration(

                    hintText: "Min. 8 characters",

                    suffixText: 'Min. 8 characters', 
                    suffixStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                    suffixIcon: IconButton( 
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    errorStyle: const TextStyle(fontSize: 14),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kata sandi tidak boleh kosong.';
                    }
                    if (value.length < 8) {
                      return 'Kata sandi minimal 8 karakter.';
                    }
                    return null;
                  },
                ),

                                const SizedBox(height: 24),

                const Text(
                  "Konfigurasi Password*", 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromARGB(221, 52, 2, 2)),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _showPassword,
                  decoration: InputDecoration(

                    hintText: "Min. 8 characters",

                    suffixText: 'Min. 8 characters', 
                    suffixStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                    suffixIcon: IconButton( 
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    errorStyle: const TextStyle(fontSize: 14),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kata sandi tidak boleh kosong.';
                    }
                    if (value.length < 8) {
                      return 'Kata sandi minimal 8 karakter.';
                    }
                    return null;
                  },
                ),

                
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox( 
                      height: 24.0,
                      width: 24.0,
                      child: Checkbox(
                        value: false, 
                        onChanged: (bool? value) {},
                        activeColor: Colors.blueAccent.shade700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text("Keep me logged in"),
                  ],
                ),

                ElevatedButton(onPressed: () {
                print(_namaController);
                print(_alamatController);
                print(_userrnameController);
                print(_passwordController);
          }, 
          child: Text("Login")),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sudah punya akun? ",
                      style: TextStyle(color: Colors.black87),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
