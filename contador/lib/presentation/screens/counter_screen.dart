// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', 
                style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
            
            if( clickCounter == 1)
            Text('Click', style: TextStyle( fontSize: 25,)),

            if( clickCounter > 1 || clickCounter == 0)
            Text('Clicks', style: TextStyle( fontSize: 25,))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: Icon(Icons.plus_one),  
      ),
    );
  }
}