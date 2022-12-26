import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miembros', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Color.fromARGB(255, 50, 200, 130),
        ),
      ),
    );
  }
}