import 'package:flutter/material.dart';

import 'CustomText.dart';

void main() => runApp(RenderTestingApp());

class RenderTestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XAM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RenderTestingHomePage(title: 'XAM'),
    );
  }
}

class RenderTestingHomePage extends StatefulWidget {
  RenderTestingHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RenderTestingHomePageState createState() => _RenderTestingHomePageState();
}

class _RenderTestingHomePageState extends State<RenderTestingHomePage> {
  var switchText = true;

  Widget get welcomeText => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText("Welcome to XAM"),
          SizedBox(
            height: 20.0,
          ),
          CustomText("One of the best place to work")
        ],
      );

  Widget get locationText => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText("Located at"),
          SizedBox(
            height: 20.0,
          ),
          CustomText("Sydney CBD")
        ],
      );

  Widget get showText => Center(
        child: switchText ? welcomeText : locationText,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(color: Color(0xff367F8D), child: showText),
        onTap: () => setState(() => switchText = !switchText),
      ),
    );
  }
}
