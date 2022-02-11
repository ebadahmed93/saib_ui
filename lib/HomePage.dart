import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      /*appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),*/
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_landing.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/map_dots.png"),
              fit: BoxFit.cover,
            ),
          ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/line.png"),
                    ),
                    Positioned.fill(
                        child: Align(

                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 90),
                                child: const Image(
                                  width: 65,
                                  height: 65,
                                  image:
                                      AssetImage("assets/images/ic_plane.png"),
                                )))),
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: EdgeInsets.zero,
                                      primary: Colors.white,
                                    ),
                                    onPressed: () => doSomeAction(""),
                                    child: const Text("AR",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black)))))),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                      child: Column(children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 30, 5, 0),
                            child: Image(
                              image: AssetImage("assets/images/logo_saib.png"),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Text("Welcome",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white))),
                      ])),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 0),
                      child: Row(children: [
                        buildImageIconWithText("1"),
                        buildImageIconWithText("2"),
                        buildImageIconWithText("3"),
                      ])),
                  Container(
                      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                      child: Column(children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(5.0, 25, 5, 5),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(40),
                                  primary: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                ),
                                onPressed: () => moveToNextScreen(),
                                child: const Text("Login",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black)))),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(40),
                                  primary: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                ),
                                onPressed: () => moveToNextScreen(),
                                child: const Text("Register",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black)))),
                      ]))
                ]),
              ]),
        ),
      ),
    );
  }

  moveToNextScreen() {
    Navigator.pop(context);
  }

  Widget buildImageIconWithText(String text) {
    String iconName = "", textName = "";
    if (text == "1") {
      iconName = "assets/images/ic_aboutus.png";
      textName = "About Us";
    } else if (text == "2") {
      iconName = "assets/images/ic_locator.png";
      textName = "ATM Locator";
    } else if (text == "3") {
      iconName = "assets/images/ic_phone.png";
      textName = "Contact Us";
    }

    return Expanded(
        child: Column(children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(30, 30),
            maximumSize: const Size(70, 70),
            shape: const CircleBorder(),
            primary: Colors.transparent,
          ),
          onPressed: () => doSomeAction(text),
          child: Image(
            image: AssetImage(iconName),
          )),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(textName,
              style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  color: Colors.white))),
    ]));
  }

  doSomeAction(String text) {}
}
