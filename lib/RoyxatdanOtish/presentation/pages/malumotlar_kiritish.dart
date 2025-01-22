import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViloyatDropdownPage(),
    );
  }
}

class ViloyatDropdownPage extends StatefulWidget {
  @override
  _ViloyatDropdownPageState createState() => _ViloyatDropdownPageState();
}

class _ViloyatDropdownPageState extends State<ViloyatDropdownPage> {
  final List<String> _viloyatlar = [
    'Toshkent',
    'Samarqand',
    'Buxoro',
    'Andijon',
    'Namangan',
    'Fargʻona',
    'Qashqadaryo',
    'Xorazm',
    'Navoiy',
    'Jizzax',
    'Surxondaryo',
    'Sirdaryo',
    'Qoraqalpogʻiston'
  ];

  String? _selectedViloyat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Viloyat tanlash"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Viloyatingiz",
                border: OutlineInputBorder(),
              ),
              value: _selectedViloyat,
              items: _viloyatlar.map((viloyat) {
                return DropdownMenuItem<String>(
                  value: viloyat,
                  child: Text(viloyat),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedViloyat = value;
                });
              },
              hint: const Text("Viloyatingizni tanlang"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_selectedViloyat != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Siz ${_selectedViloyat} viloyatini tanladingiz."),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Iltimos, viloyatni tanlang!"),
                    ),
                  );
                }
              },
              child: const Text("Tasdiqlash"),
            ),
          ],
        ),
      ),
    );
  }
}
