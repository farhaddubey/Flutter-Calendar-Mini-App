import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}
class _TableExample extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Table'),),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120),
                border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2
                ),
                children: [
                  TableRow(children: [
                    Column(children: [Text('Website', style: TextStyle(fontSize: 20),)],),
                    Column(children: [Text('Tutorial', style: TextStyle(fontSize: 20),)],),
                    Column(children: [Text('Review', style: TextStyle(fontSize: 20),)],)
                  ]),
                  TableRow( children: [
                    Column(children:[Text('Javatpoint')]),
                    Column(children:[Text('Flutter')]),
                    Column(children:[Text('5*')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('Javatpoint')]),
                    Column(children:[Text('MySQL')]),
                    Column(children:[Text('5*')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('Javatpoint')]),
                    Column(children:[Text('ReactJS')]),
                    Column(children:[Text('5*')]),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
