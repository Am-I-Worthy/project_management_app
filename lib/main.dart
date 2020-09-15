import 'package:flutter/material.dart';
import 'package:project_management_app/CenterWidget.dart';
import 'package:project_management_app/SideBar.dart';
import 'package:project_management_app/message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int toggle = 0;

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (context, constraints) {
            print(constraints.minWidth);
            if (constraints.minWidth <= 1100.0 &&
                constraints.minWidth > 840.0) {
              return Stack(
                children: [
                  CenterWidget(
                    level: 2,
                  ),
                  SideBar(
                    level: 2,
                  ),
                  Message(),
                ],
              );
            }
            if (constraints.minWidth <= 840.0 && constraints.minWidth >= 0.0) {
              return Stack(
                children: [
                  CenterWidget(
                    level: 3,
                  ),
                  SideBar(
                    level: 2,
                  ),
                  Message(
                    level: 3,
                    toggle: toggle,
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 375),
                    right: toggle == 1 ? 250.0 : 0.0,
                    child: IconButton(
                      icon: Icon(
                        (toggle == 0) ? Icons.message : Icons.cancel,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (toggle == 0)
                              toggle = 1;
                            else
                              toggle = 0;
                          },
                        );
                      },
                    ),
                  )
                ],
              );
            } else
              return Stack(
                children: [
                  CenterWidget(),
                  SideBar(),
                  Message(),
                ],
              );
          },
        ),
      ),
    );
  }
}
