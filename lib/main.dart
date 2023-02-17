import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Palette {
  static const MaterialColor xdPrimaryColor = MaterialColor(
    0xFF2F6858, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE1E3E0), //10%
      100: Color(0xffb74c3a), //20%
      200: Color(0xffa04332), //30%
      300: Color(0xff89392b), //40%
      400: Color(0xff733024), //50%
      500: Color(0xFF2F6858), //60%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );
  static const Color xdSecondaryColor = Color(0xFF54615C);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Palette.xdPrimaryColor,
        //   accentColor: Palette.xdPrimaryColor[100],
      ),
      title: 'Xì dách',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.xdPrimaryColor[50],
      // body: Wrap(children: [
      //   DuyAnh(),
      //   Hai(),
      //   Toan(),
      // ]),
      // body: Toan(),
      body: const GameSession(),
      // body: DuyAnh(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   backgroundColor: Palette.xdPrimaryColor,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GameSession extends StatelessWidget {
  const GameSession({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            debugPrint('debug:');
          },
        ),
        title: const Text(
          'Lịch sử chơi',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 2, // replace 10 with the length of your list
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    title: Text('Xì dách 3 trong 1..'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text('Button'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    title: Text(
                      'Chơi cùng Duy Anh, a Toàn, Huệ....',
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('Thứ tư, 27/12/22'),
                    trailing: Text('Hôm nay'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
