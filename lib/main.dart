import 'package:drawer_ui/ElasticDrawerKey.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor:  Theme.of(context).scaffoldBackgroundColor,
      mainChild: ManiChild(),
      drawerChild: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/6,
            margin: EdgeInsets.only(bottom: 55),
            decoration: BoxDecoration(
              // color: Colors.green[100],
              color: Color(0xFF006D4B),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0,-7)
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            child: Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: ClipRect(
                child: Image.asset('assets/Layer.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 90,),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => ManiChild()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.assignment,color: Colors.green[900],),
                  title: Text(menuName[0],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] ),),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => YellowPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.home,color: Colors.green[900],),
                  title: Text(menuName[1],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] )),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => GreenPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.file_download,color:Colors.green[900],),
                  title: Text(menuName[2],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] )),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => RedPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.photo_library,color: Colors.green[900],),
                  title: Text(menuName[3],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] ),),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => RedPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.settings,color: Colors.green[900],),
                  title: Text(menuName[4],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] ),),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => RedPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.account_box,color: Colors.green[900],),
                  title: Text(menuName[5],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] ),),
                ),
              ),
              InkWell(
                onTap: (){
                  ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
                  ElasticDrawerKey.navigator.currentState.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => RedPage()
                      )
                  );
                },
                child: ListTile(
                  trailing: Icon(Icons.share,color: Colors.green[900],),
                  title: Text(menuName[6],textAlign: TextAlign.end,style: TextStyle(color:Colors.green[900] ),),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
  static const List<String> menuName = [
    "پێشەکی",
    "سەرەکی",
    "داگرتنی دەنگەکان",
    "دیزاینی ئایەت",
    "ڕێکخستنەکان",
    "دەربارە",
    "ناردنی بەرنامە",
  ];

}
class ManiChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/6,
            margin: EdgeInsets.only(bottom: 55),
            decoration: BoxDecoration(
              color: Color(0xFF006D4B),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0,-7)
                ),
              ],
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
class GreenPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(color: Color(0xff3cba54)));
  }
}
class YellowPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(color: Color(0xfff4c20d)));
  }
}
class RedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(color: Color(0xffdb3236)));
  }
}


