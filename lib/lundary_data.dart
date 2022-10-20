import 'package:flutter/material.dart';

void main() => runApp(const Regpage());

class Regpage extends StatelessWidget {
  const Regpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        drawer: const Drawer(),
        body: const RegistrationPage(),
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'My Laundary Data',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 130,
            width: 400,
            child: const Center(
                child: Text(
              'My Orders',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25,
              ),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: 190,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      '22\nOnly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25, color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: 190,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      '22\nOnly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25, color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),

          
          Container(
              color: Colors.blue,
              height: 200,
              width: 400,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      color: Colors.greenAccent,
                      height: 80,
                      width: 300,
                      alignment: Alignment.center,
                      child: const Text(
                        'data',
                        style: TextStyle(
                            fontSize: 25, color: Colors.lightGreenAccent),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Container(
                      color: Colors.redAccent,
                      height: 80,
                      width: 300,
                      alignment: Alignment.center,
                      child: const Text(
                        'data',
                        style: TextStyle(fontSize: 25, color: Colors.red),
                      ),
                    ),
                  )
                ],
              ))),
        ]),
      ),
    );
  }
}