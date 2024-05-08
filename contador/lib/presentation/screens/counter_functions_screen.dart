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

    final currentWidth = MediaQuery.of(context).size.width;

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
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: (){
              setState(() {
                if(clickCounter > 0){
                    clickCounter--;
                   }
              });
            },
            ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

final IconData icon;
final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
           onPressed: onPressed,
           child: Icon(icon),  
    );
  }
}