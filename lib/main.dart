import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything!!')),
          backgroundColor: Colors.blueGrey,

        ),
        body: ballguesser(),backgroundColor: Colors.teal.shade200,

    )

  ));
}


//   body: Container(
//     decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/background.jpg'),fit:BoxFit.cover,),),
//       child: ballguesser()
// ),


class ballguesser extends StatefulWidget {

  const ballguesser({super.key});

  @override
  State<ballguesser> createState() => _ballguesserState();
}

class _ballguesserState extends State<ballguesser> {
  int ball_image=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(' Need Help\n        In \n  Deciding?\n  CLICK ME !',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'Kablammo'),),
        ),
        Expanded(

          child: TextButton(
            child: Image.asset('images/ball$ball_image.png', ),
            onPressed: (){
              print('I got CLICKED!!!');
              setState(() {
                ball_image=Random().nextInt(5)+1;
                ball_image=Random().nextInt(5)+1;
              });
            },
          ),
            )
      ],
    );
  }
}
