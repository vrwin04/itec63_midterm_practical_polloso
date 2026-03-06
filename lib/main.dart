import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
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
      
      //background color - Optional
      body: Container( 
        color: Colors.grey[300],
        //Apply Container Property to this Section
        child: Center(
          child: Container(
            //Apply Container Property to this Section (1st Container)
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(
              maxWidth: 320,
              maxHeight: 450,
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              border: Border.all(color: Colors.black, width: 5),
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
              //Apply Container Property to this Section (2nd Container)
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Container(
                //Apply Container Property to this Section (3rd Container)
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Image.asset(
                  'assets/images/jojobizarre.jpeg',
                  fit: BoxFit.cover,
                ),
              ),//Container Widget
            ),// Container Widget
          ),// Container Widget
        ), //Center Widget
      ), // Container Widget
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[700],
        child: const Center(child: Icon(Icons.camera, color: Colors.white)),
      ),
    );
  }
}