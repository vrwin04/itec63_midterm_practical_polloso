import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Polloso Program 1',
      home: const PictureFrameScreen(),
    );
  }
}

class PictureFrameScreen extends StatelessWidget {
  const PictureFrameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Polloso Program 1',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontFamily: 'BoyScout', 
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      
      body: Container( 
        color: Colors.grey[300],
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            constraints: const BoxConstraints(
              maxWidth: 320,
              maxHeight: 450,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 6),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent, width: 4),
              ),
              child: Image.asset(
                'assets/images/jojobizarre.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[700],
        child: const Center(child: Icon(Icons.camera, color: Colors.white)),
      ),
    );
  }
}