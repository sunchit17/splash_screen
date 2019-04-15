import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Screen',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Splash Screen'),
      routes: {
        'Home': (context) => ScreenOne(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: 'Home',
        //route
        title: new Text(
          'GLUG MVIT',
          style: new TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 40.0),
        ),
        image: new Image.network(
            'https://media.licdn.com/dms/image/C510BAQHwO1jpUm-QLw/company-logo_200_200/0?e=2159024400&v=beta&t=gAnJNt3bRKkX_CkkWJApw9fJTyI4Cy3Ea8gVXGaNQac'),
        styleTextUnderTheLoader: new TextStyle(fontSize: 0),
        photoSize: 180.0);
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () => Navigator.pop(context)),
        backgroundColor: Colors.white,
        title: Text(
          'GLUG',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: new Text('Welcome! \n to the official GLUG MVIT App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.deepPurple,
            )),
      ),
    );
  }
}
