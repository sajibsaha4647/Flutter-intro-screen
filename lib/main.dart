import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: IntroductionScreen(
      pages: [
        PageViewModel(

          title: "Fractional shares",
          body:
          "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.asset('images/1.jpg'),
        ),PageViewModel(
          title: "Fractional shares",
          body:
          "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.asset('images/1.jpg'),
        ),PageViewModel(
          title: "Fractional shares",
          body:
          "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.asset('images/1.jpg'),
        ),
      ],
        onDone: (){
            print("done");
        },
        showSkipButton: true,
        showNextButton: false,
        done: Text("Done"),
        skip: Text("Skip"),
        dotsDecorator: DotsDecorator(
          size: Size(10.0,10.0),
          color: Colors.blue,
          activeColor: Colors.green,
          activeSize: Size(20.0,10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          )
        ),
      ),
    ));
  }
}


