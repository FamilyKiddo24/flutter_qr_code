import 'package:flutter/material.dart';
import 'package:flutter_qr_code/generate_qr_code.dart';
// import 'package:flutter_qr_code/generate_qr_code.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cat Utilities',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Cat Utilities',style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),),backgroundColor: const Color.fromARGB(255, 255, 0, 0),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GenerateQrCode()));
              });
            }, child: const Text('Generate QR Code')),
            const SizedBox(height: 40,),          
          ],
        ),
      ),
    );
  }
}