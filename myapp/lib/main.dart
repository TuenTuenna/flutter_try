import 'package:flutter/material.dart';

void main() {
  // 메인에서 실행
  runApp(MyApp());
}

// 메인 클래스
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const Center(
    //     child: Text(
    //   'Hello, world!',
    //   textDirection: TextDirection.ltr,
    // ));

    // 구글 매테리얼 테마 스캐폴드 앱
    // return MaterialApp(
    //   title: 'My first Web',
    //   theme: ThemeData(
    //     primarySwatch: Colors.green,
    //   ),
    //   home: MyHomePage(title: 'My first Web'),
    // );

    // return Container(
    //     decoration: const BoxDecoration(color: Colors.white),
    //     child: Column(children: [titleSection]));

    return MaterialApp(
        title: 'Flutter layout demo',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MyFirstApp(title: "oh my godgogodoo"));
  }
}

// 타이틀 섹션
Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'what is wrong?!?!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
    decoration: BoxDecoration(color: Colors.yellow));

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class MyFirstApp extends StatefulWidget {
  MyFirstApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyMyFirstAppState createState() => _MyMyFirstAppState();
}

class _MyMyFirstAppState extends State<MyFirstApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('이거슨 매테리얼 탭바'),
      ),
      body: SingleChildScrollView(
          child: Wrap(
              spacing: 10, // to apply margin in the main axis of the wrap
              runSpacing: 10, // to apply margin in the cross axis of the wrap
              children: <Widget>[
            titleSection,
            titleSection,
            createButtonSection(context),
            createCard(color),
            createCard(color),
            createCard(color),
            createCard(color),
            createCard(color),
            createCard(color),
            createCard(color),
            createCard(color),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // 카드 위젯 만들기
  Widget createCard(Color color) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.orange,
        child: Card(
            color: Colors.green[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            )));
  }

  // 버튼 섹션
  Widget createButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(color, Icons.call, 'CALL'),
            _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
            _buildButtonColumn(color, Icons.share, 'SHARE'),
          ],
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
