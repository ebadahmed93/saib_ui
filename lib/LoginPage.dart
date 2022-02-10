import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;

        if (!rememberMe!) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  void initState() {
    _passwordVisible = false;
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
          padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
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
              const Image(
                image: AssetImage("assets/images/line.png"),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Image(
                        image: AssetImage("assets/images/logo_saib.png"),
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.white54, fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          hintStyle: TextStyle(color: Colors.white54),
                          hintText: 'User Name',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: !_passwordVisible,
                        style: const TextStyle(
                            color: Colors.white54, fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0, 30, 0, 30),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                          ),
                          hintStyle: const TextStyle(color: Colors.white54),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white54,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-24, 12),
                        child: Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: rememberMe,
                            activeColor: Colors.white,
                            onChanged: (value) {
                              _onRememberMeChanged(value);
                            },
                            title: const Text(
                              "Remember me",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5),
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
                      const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("Forget Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  color: Colors.white))),
                      RichText(
                        text: const TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Dont have an account '),
                            TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ),
                    ]),
              ),
              const Expanded(child: VerticalDivider()),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Row(children: [
                    buildImageIcon("1"),
                    buildImageIcon("2"),
                    buildImageIcon("3"),
                  ])),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  moveToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const HomePage(
          title: 'Home Page',
        );
      }),
    );
  }

  Widget buildImageIcon(String text) {
    String iconName = "";
    if (text == "1") {
      iconName = "assets/images/ic_aboutus.png";
    } else if (text == "2") {
      iconName = "assets/images/ic_locator.png";
    } else if (text == "3") {
      iconName = "assets/images/ic_phone.png";
    }

    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(40, 40),
              maximumSize: const Size(40, 40),
              shape: const CircleBorder(),
              primary: Colors.transparent,
            ),
            onPressed: () => doSomeAction(text),
            child: Image(
              image: AssetImage(iconName),
            )));
  }

  doSomeAction(String text) {}
}
