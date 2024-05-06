// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      clickCounter++;
                    });
                  },
                  child: Icon(Icons.plus_one),  
           ),

          const SizedBox(height: 10),

           FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(clickCounter > 0){
                          clickCounter--;
                        }
                    });
                  },
                  child: Icon(Icons.exposure_minus_1_outlined),  
           ),

           const SizedBox(height: 10),

           FloatingActionButton(
                  onPressed: () {
                    setState(() {
                          clickCounter = 0;
                    });
                  },
                  child: Icon(Icons.refresh_outlined),  
           ),
        ],
      ),
    );
  }
}