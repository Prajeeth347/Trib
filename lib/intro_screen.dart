import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:trib/home.dart';

class IntroScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen>{

  @override
  Widget build(BuildContext context) {

    //this is a page decoration for intro screen
    PageDecoration pageDecoration = PageDecoration(
          titleTextStyle: TextStyle(fontSize: 28.0, 
                    fontWeight: FontWeight.w700, 
                    color:Colors.white 
                  ), //tile font size, weight and color
          bodyTextStyle:TextStyle(fontSize: 19.0, color:Colors.white), 
          //body text size and color
          // descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          //decription padding
          imagePadding: EdgeInsets.all(20), //image padding
          boxDecoration:BoxDecoration(
            //   gradient: LinearGradient(
            //       begin: Alignment.topRight,
            //       end: Alignment.bottomLeft,
            //       stops: [0.1, 0.5, 0.7, 0.9],
            //       colors: [
            //         Colors.orange,
            //         Colors.deepOrangeAccent,
            //         Colors.red,
            //         Colors.redAccent,
            //       ],
            // ),
          ), //show linear gradient background of page  
    );

    return IntroductionScreen(
          globalBackgroundColor: Colors.black,
          //main background of screen
          pages: [ //set your page view here
            PageViewModel(
              title: "Title 1",
              body: "This is a travel app",
              image: introImage('assets/images/img1.png'),
              decoration: pageDecoration,
              footer: FloatingActionButton.extended(
                    onPressed: () {
                    },
                    icon: Icon(
                      FontAwesomeIcons.google,
                    ),
                    label: Text('Sign In With Google'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
            ),
            PageViewModel(
              title: "Title 2",
              body: "This is a travel app 2",
              image: introImage('assets/images/img2.png'),
              footer: FloatingActionButton.extended(
                    onPressed: () {
                    },
                    icon: Icon(
                      FontAwesomeIcons.google,
                    ),
                    label: Text('Sign In With Google'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
              decoration: pageDecoration,
            ),
            PageViewModel(
               title: "Title 3",
              body: "This is a travel app 3",
              image: introImage('assets/images/img3.png'),
              footer: FloatingActionButton.extended(
                    onPressed: () {
                    },
                    icon: Icon(
                      FontAwesomeIcons.google,
                    ),
                    label: Text('Sign In With Google'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
              decoration: pageDecoration,
            ),

            //add more screen here
          ],

          onDone: () => goHomepage(context),
          onSkip: () => goHomepage(context),
          showSkipButton: false,
          nextFlex: 0,
          showBackButton: false,
          showNextButton: false,
          showDoneButton: false,
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0), //size of dots
            color: Colors.white, //color of dots
            activeSize: Size(22.0, 10.0),
            //activeColor: Colors.white, //color of active dot
            activeShape: RoundedRectangleBorder( //shave of active dot
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        );
  }

  void goHomepage(context){
     Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context){ 
           return Home();
        }
    ), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
  //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}