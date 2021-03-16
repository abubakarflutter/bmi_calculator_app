import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'This a simple BMI Calculator',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('BMI CALCULATOR',
            ),
        ),
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: BuildCard(colour: Color(0xFF1D1E33),),),
                Expanded(child: BuildCard(colour: Color(0xFF1D1E33),),),
              ],
            )),
            Expanded(child: BuildCard(colour: Color(0xFF1D1E33),),),
            Expanded(child: Row(
              children: [
                Expanded(child: BuildCard(colour: Color(0xFF1D1E33),),),
                Expanded(child: BuildCard(colour: Color(0xFF1D1E33),),),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class BuildCard extends StatelessWidget {

  BuildCard({@required this.colour});

  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
