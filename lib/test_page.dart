import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _text = 'Hello Text'; // state variable

  Widget buildItem(
      {required IconData icon,
      required String label,
      Color color = Colors.black}) {
    return InkWell( // button click 
      onTap: () {
        print(label);
        // ***for change value 
        setState(() {
          //_text = Random().nextInt(100).toString();
          _text = label;
        });
      },
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              label,
              style: GoogleFonts.kanit(color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextWithBackground({required String text, required Color color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 200.0,
          color: color,
          padding: EdgeInsets.all(10.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList = [
      buildItem(icon: Icons.phone, label: "phone"),
      buildItem(icon: Icons.route, label: "route"),
      buildItem(icon: Icons.share, label: "share"),
      buildItem(icon: Icons.person, label: "person"),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Center(
                    child: Text(
                      _text,
                      style: GoogleFonts.kanit(
                        fontSize: 80.0,
                      ),
                    )
                )
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                children: itemList 
                

                //[
                // for (var item in itemList) item,

                //buildTextWithBackground(text: "aaa", color: Colors.red),
                //buildTextWithBackground(text: "bbb", color: Colors.blue),
                //buildTextWithBackground(text: "ccc", color: Colors.green),
                //Spacer(flex: 2,),
                //buildTextWithBackground(
                //    text: "ddddd", color: Colors.orange),
                //ElevatedButton(onPressed: (){}, child: Text("go"))
                //]
                ),
          ],
        ),
      ),
    );
  }
}
