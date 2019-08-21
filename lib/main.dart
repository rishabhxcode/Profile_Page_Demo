import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var scrnH = MediaQuery.of(context).size.height;
    var scrnW = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/dhoni.jpg'),
               fit:  BoxFit.cover,
            )
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white60,), onPressed: (){}),
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              Icon(Icons.close, size: 34, color: Colors.white60,),
            SizedBox(
              width: 12,
            ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
Container(
  alignment: Alignment.bottomCenter,
  height: scrnH/9,
  width: scrnW,
  decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end:  Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          //Colors.black12,
Colors.black54,
          Colors.black,

        ]
    ),
  ),
    child: Container(
      margin: EdgeInsets.only(left: 8, bottom: 12, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Text('4.5M\n Followers', style: TextStyle(
            color: Colors.white
        ),
        textAlign: TextAlign.center,
        ),
    Text('454\n Posts', style: TextStyle(
    color: Colors.white
    ),
    textAlign: TextAlign.center,
    ),
          Text('103\n Following', style: TextStyle(
              color: Colors.white
          ),
            textAlign: TextAlign.center,
          )
      ],),
    )
),
             Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[


                Container(
                  alignment: Alignment.topCenter,
                  height: scrnH/8,
                  color: Colors.black,
                ),
              Container(
              height: scrnH/8,
                width: scrnW,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:
                  [Color(0xffffffff),
                    Color(0xffffddad)])
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Text('MS Dhoni', style: TextStyle(
                        fontSize: 26,
                          color: Colors.brown,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),),
                      Text('Delhi, India')
                    ],),
                InkWell(
                  onTap: (){},
                    highlightColor: Colors.purple,
                    splashColor: Colors.purple,
                    child: Container(
                      height: scrnH/16,
                      width: scrnW/3.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.purpleAccent, Colors.purple.shade800]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )

                      ),
                      alignment: Alignment.center,
                      child: Text('Follow', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                ),
                  ],
                ),
              ),

              ],
            ),
          ]),
          bottomNavigationBar: Container(
            color: Color(0xffffddad),
            height: scrnH/12,
            child: CurvedNavigationBar(
           height: MediaQuery.of(context).size.height/12,
            color: Colors.white,
            animationDuration: Duration(milliseconds: 500),
            backgroundColor: Colors.transparent,
            items: <Widget>[
              Icon(Icons.home, color: Colors.deepOrange,),
              Icon(Icons.search, color: Colors.deepOrange,),
              Icon(Icons.add, color: Colors.deepOrange,size: 40,),
              Icon(Icons.favorite_border, color: Colors.deepOrange,),
              Icon(Icons.person_outline, color: Colors.deepOrange,)
            ],
        ),
          ),
        ),
      ],
    );
  }
}
