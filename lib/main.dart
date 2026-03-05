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
            letterSpacing: 2,
            fontFamily: 'BoyScout', 
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.grey[200],
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueAccent, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 400,
            ),
            decoration: BoxDecoration(
               border: Border.all(color: Colors.purple[700]!, width: 4),
            ),
            child: Image.asset(
              'jojobizarre.jpeg',
              fit: BoxFit.cover,
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