import 'package:flutter/material.dart';

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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        accentColor: Palette.xdPrimaryColor[100],
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Palette.xdPrimaryColor[50],
      // backgroundColor: Colors.red,

      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),

      body: Container(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Palette.xdPrimaryColor[50],
        ),
        alignment: Alignment.topLeft,
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Xin chào",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tiếp tục sử dụng",
                          style: Theme.of(context).textTheme.labelMedium,
                        )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 4,
                        children: [
                          ElevatedButton.icon(
                            onPressed: (_incrementCounter),
                            icon: const Icon(Icons.add),
                            label: const Text("Google"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Palette.xdSecondaryColor,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: (_incrementCounter),
                            icon: const Icon(Icons.add),
                            label: const Text("Facebook"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Palette.xdSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'You have clicked the button this many times:',
                style: TextStyle(backgroundColor: Palette.xdPrimaryColor),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Invoke "debug painting" (press "p" in the console, choose the
      //     // "Toggle Debug Paint" action from the Flutter Inspector in Android
      //     // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      //     // to see the wireframe for each widget.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         "Xin chào",
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       const Text(
      //         'You have clicked the button this many times:',
      //         style: TextStyle(backgroundColor: Palette.xdPrimaryColor),
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       const Text('aa', style: TextStyle(color: Color(0xFF2F6858)))
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Palette.xdPrimaryColor,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
