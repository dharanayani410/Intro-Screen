import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            color: Colors.lightBlueAccent.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Text(
                      "Back",
                      style: Global.bottomText,
                    )),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 600,
            width: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZmkM_Pbqi1u2Bg1kvDTW6_eAgkB-dIy5W-w&usqp=CAU"),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "WelCome ",
                  style: Global.title,
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.65),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.red,
                child: const Text("Start"),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
