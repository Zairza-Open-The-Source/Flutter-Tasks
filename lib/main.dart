import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        title: Text(widget.title),
      ),
      body:Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width: 360,
                      decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8 ),
                                border: Border.all(color: Colors.black)
                                ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12:20:',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                              Text('  Go to college',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12 march',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                              ),),
                              
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      height: 64,
                      width: 360,
                      decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8 ),
                                border: Border.all(color: Colors.black)
                                ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12:20:',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                              Text('  Go to college',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12 march',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                              ),),
                              
                            ],
                          )
                        ],
                      ),
                    ),
                     SizedBox(height: 16,),
                    Container(
                      height: 64,
                      width: 360,
                      decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8 ),
                                border: Border.all(color: Colors.black)
                                ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12:20:',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                              Text('  Go to college',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text('12 march',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                              ),),
                              
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
