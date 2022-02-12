import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// void main() => runApp(MyApp());
//works the same

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class  MyAppState extends State<MyApp>{
  var questionsIndex =0;
  void answerQuestion(){
    setState(() {
         questionsIndex= questionsIndex +1; 
    });

    // print('answer chosen') ;
  }
  @override
  Widget build(BuildContext context) {
    var questions =[
       'Whats\'s your favourite movie',
       'Whats\'s your favourite animal'
    ] ;
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title: Text('Trevor App Learning'),),
      body: Column(children: [
        Text(questions[questionsIndex]),
        // ignore: deprecated_member_use
         RaisedButton(onPressed: answerQuestion, child:Text('1'),),
        // ignore: deprecated_member_use
        RaisedButton(onPressed:()=> print('Answer chosen 2'), child:Text('2'),),
        // ignore: deprecated_member_use
        RaisedButton(onPressed: ()=> print('Answer chosen 3'), child:Text('3'),),
      ],),
    ),);
  }

}

// smiley code
// import 'dart:math' as Math;
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Smiley Face',
//       home: Scaffold(
//           body: Container(
//             constraints: BoxConstraints.expand(),
//             child: Smiley(),
//           )),
//     );
//   }
// }
//
// class Smiley extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: SmileyPainter(),
//     );
//   }
// }
//
// class SmileyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final radius = Math.min(size.width, size.height) / 2;
//     final center = Offset(size.width / 2, size.height / 2);
//     // Draw the body
//     final paint = Paint()..color = Colors.yellow;
//     canvas.drawCircle(center, radius, paint);
//     // Draw the mouth
//     final smilePaint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 10;
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 2), 0,
//         Math.pi, false, smilePaint);
//     // Draw the eyes
//     canvas.drawCircle(
//         Offset(center.dx - radius / 2, center.dy - radius / 2), 10, Paint());
//     canvas.drawCircle(
//         Offset(center.dx + radius / 2, center.dy - radius / 2), 10, Paint());
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
