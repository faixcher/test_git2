import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  Widget buildItem({
    required IconData icon, 
    required String label, 
    Color color = Colors.black}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label!,
          style: GoogleFonts.kanit(color: color),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildItem(icon: Icons.phone, label: "phone", color: Colors.red),
              buildItem(icon: Icons.route, label: "route", color: Colors.blue),
              buildItem(icon: Icons.share, label: "share"),
              buildItem(
                  icon: Icons.person, label: "person", color: Colors.green),
            ]),
      ),
    );
  }
}
