import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State <StatefulWidget> createState() => _MyStatefulWidgetStatee();

}

class _MyStatefulWidgetStatee extends State<Mystatefulwidget> {
  var _hitungan = 0;

  void _tambahAngka(){
    setState(() {
      _hitungan++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Program Stateful Widget',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_hitungan'),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              _tambahAngka();
            },
            child: Text('Tambahkan Angka'),
          )
        ],
      ),
    );
  }
}