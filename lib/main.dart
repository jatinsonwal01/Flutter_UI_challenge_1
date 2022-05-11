import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
   runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    var m=MediaQuery.of(context).size;
    Widget calbutton( String btntext , Color btncolor , Color txtcolor)
    {
      return ElevatedButton(
        onPressed: () {  },
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            minimumSize: Size( (m.width)/6 +10 ,(m.width)/6 + 10 ),
            onPrimary: Color(0xff413D3D),
            primary: btncolor,
        ),
        child: Text(btntext, style: TextStyle(color: txtcolor, fontSize: 32)),

      );
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
           children: [
             Expanded(
               child: Container(
                 color: Colors.black,
                 child: Text('life'),
                 height: m.height*(2/5),
                 width: m.width,
                 margin: EdgeInsets.all(0),
                 padding: EdgeInsets.all(0),
               ),
             )
           ],
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xff151414),
                  height: m.height*(3/5),
                  width: m.width,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          calbutton('C', Color(0xff151414),Colors.white  ),
                          calbutton('%', Color(0xff151414),Colors.white ),
                          calbutton('AC', Color(0xff151414),Colors.white ),
                          calbutton('/', Color(0xff606060),Colors.white ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          calbutton('7', Color(0xff151414),Colors.white  ),
                          calbutton('8', Color(0xff151414),Colors.white ),
                          calbutton('9', Color(0xff151414),Colors.white ),
                          calbutton('x', Color(0xff606060),Colors.white ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          calbutton('4', Color(0xff151414),Colors.white  ),
                          calbutton('5', Color(0xff151414),Colors.white ),
                          calbutton('6', Color(0xff151414),Colors.white ),
                          calbutton('-', Color(0xff606060),Colors.white ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          calbutton('1', Color(0xff151414),Colors.white  ),
                          calbutton('2', Color(0xff151414),Colors.white ),
                          calbutton('3', Color(0xff151414),Colors.white ),
                          calbutton('+', Color(0xff606060),Colors.white ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          calbutton('00', Color(0xff151414),Colors.white  ),
                          calbutton('0', Color(0xff151414),Colors.white ),
                          calbutton('.', Color(0xff151414),Colors.white ),
                          calbutton('=', Color(0xff122AFF),Colors.white ),
                        ],
                      )
                    ],
                  )
                  // width:
                ),
              )
            ],
          ),
        ],
      ),


    );
  }
}
