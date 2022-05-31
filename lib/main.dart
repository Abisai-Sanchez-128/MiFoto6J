import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Mi pic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x212F3C),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x212F3C),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0x212F3C),
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Text(
                        'Sanchez Rubio Abisai 6-J',
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 25,
                thickness: 3,
                indent: 80,
                endIndent: 80,
                color: Color(0xFF7E272D),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 20, 80, 8),
                child: Image.network(
                  'https://raw.githubusercontent.com/Abisai-Sanchez-128/fotitos/main/aaaa.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                height: 25,
                thickness: 3,
                indent: 80,
                endIndent: 80,
                color: Color(0xFF7E272D),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0x212F3C),
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Text(
                        '6-J  Programación',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
