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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.xdPrimaryColor[50],
      body: Column(
        children: [
          DuyAnh(),
          Hai(),
          Toan(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   backgroundColor: Palette.xdPrimaryColor,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DuyAnh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('DuyAnh here'),
      ],
    );
  }
}

class Hai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hai here'),
      ],
    );
  }
}

class Toan extends StatefulWidget {
  @override
  _ToanState createState() => _ToanState();
}

class _ToanState extends State<Toan> {
  bool? _value = false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.xdPrimaryColor[50],
      ),
      alignment: Alignment.topLeft,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
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
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: (_incrementCounter),
                          icon: const Icon(Icons.add),
                          label: const Text("Facebook"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Palette.xdSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Flexible(
                    child: TextField(
                  // style: Theme.of(context).textTheme.headlineMedium,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Địa chỉ email',
                    labelText: 'Nhập địa chỉ email',
                  ),
                )),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (_incrementCounter),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.xdPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Tiếp tục đăng nhập',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
