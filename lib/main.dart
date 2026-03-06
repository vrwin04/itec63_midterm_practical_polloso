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
      title: 'Polloso Practical 1',
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
        title: const Text('Polloso Practical 1',
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            letterSpacing: 2.0, 
            fontFamily: 'BoyScout', 
          ),
        ), 
        backgroundColor: Colors.teal, // Exact color from the picture
        centerTitle: true, 
      ), //AppBar
      
      body: Container(
        constraints: const BoxConstraints.expand(), // Exact constraint from the picture
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5.0), // Exact border from the picture
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5.0, 5.0), // Exact offset from the picture
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ), //boxShadow
          ],
        ), //decoration
        child: Center(
          child: Container(
            // Adding margin to separate from the outer border, matching the visual
            margin: const EdgeInsets.all(25), 
            decoration: BoxDecoration(
              // The thick purple frame visible in the picture's app preview
              border: Border.all(color: Colors.purple, width: 10.0), 
            ),
            child: Container(
              decoration: BoxDecoration(
                // The thin orange inner frame visible in the picture's app preview
                border: Border.all(color: Colors.deepOrange, width: 5.0), 
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
        backgroundColor: Colors.teal, 
        child: const Center(child: Icon(Icons.camera, color: Colors.white)), 
      ), 
    );
  }
}