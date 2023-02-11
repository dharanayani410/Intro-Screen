import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skip/2.dart';
import 'package:skip/3.dart';
import 'package:skip/homepage.dart';

import '1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? firstVisited = prefs.getBool('first') ?? false;
  bool? secondVisited = prefs.getBool('second') ?? false;
  bool? thirdVisited = prefs.getBool('third') ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      '1': (context) => const First(),
      '2': (context) => const Second(),
      '3': (context) => const Third(),
      'homePage': (context) => const HomePage()
    },
    initialRoute: (firstVisited == false)
        ? '1'
        : (secondVisited == false)
            ? '2'
            : (thirdVisited == false)
                ? '3'
                : 'homePage',
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val) {
          setState(() {});
        },
        controller: Global.pageController,
        children: Global.pages,
      ),
      // body: Global.pages[Global.i],
    );
  }
}

class Global {
  static TextStyle title = const TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.w900,
  );
  static TextStyle subTitle = const TextStyle(
    fontSize: 15,
    color: Colors.black,
    inherit: true,
  );
  static TextStyle bottomText =
      TextStyle(fontSize: 15, color: Colors.cyan.shade700);
  static int i = 0;
  static PageController pageController = PageController();
  static List<Widget> pages = [const First(), const Second(), const Third()];
}
