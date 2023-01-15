import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:sgconnectest/home.dart';
import 'package:sgconnectest/nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';


class OnboardScreem extends StatefulWidget {
  const OnboardScreem({Key? key}) : super(key: key);

  @override
  State<OnboardScreem> createState() => _OnboardScreemState();
}

class _OnboardScreemState extends State<OnboardScreem> {

  late PageController  _controller;
  @override
  void initState(){
    super.initState();
    _controller =  PageController();
  }


  Widget page1(){
    return Container(
      color: Colors.lightGreen[400],
      padding: EdgeInsets.symmetric(vertical: 56.0  ,  horizontal: 56.0),
      child: Column(
        children: [
          SizedBox( width: 70 ,  height: 70,
          child: Image.asset("assets/images/apple.jpg" )) ,
          SizedBox(height: 16),
          Text("FRESHOP" ,  style: TextStyle(fontSize: 28 , fontWeight: FontWeight.w700 , letterSpacing: 5.0),),
          SizedBox(
            height: 400 ,
            child: ShaderMask(
              child: Image.asset("assets/images/man.jpg"),
              blendMode: BlendMode.dstIn,
              shaderCallback: (rect){
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black , Colors.transparent
                  ]
                ).createShader(Rect.fromLTRB(0, 200, rect.width, rect.height));
              },
            ),
          ),
          Text("Discover Grovery \n and Food",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
          ),
          SizedBox(height: 16),
          Text("in you eat fresh that you have  a living ,\n the  food  returns  that living energy",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
  Widget page2(){
    return Container(
      color: Colors.lightGreen[400],
      child: Center(
        child: Text("Ecran 2" ,  style: TextStyle(color:Colors.white , fontSize: 18.0),),
      ),
    );
  }
  Widget page3(){
    return Container(
      color: Colors.lightGreen[400],
      child: Stack(
        children: [
          Center(
            child: Text(
              "Screem 3", style: TextStyle(color: Colors.white  ,  fontSize: 18.0),
            ),
          ),
          Positioned(
            right: 24.0,
            bottom: 45,
            child: Container(
              width: 120,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavBar()));
                },
                style:ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen[800]),
                child: Text("Get Started" ,  style: TextStyle(color: Colors.white),)
              )
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              page1(),
              page2(),
              page3()
            ],
          ),
          Positioned(
            left: 0,
              right: 0,
              bottom: 56,
            child : Center(
              child: SmoothPageIndicator(
              count: 3,
              controller: _controller,
                effect: ExpandingDotsEffect(
                  expansionFactor: 2,
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey
                ),
              )
            )
          )
        ],
      ),
    );
  }
}

