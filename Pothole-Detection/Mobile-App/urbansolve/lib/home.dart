import 'package:flutter/material.dart';
import 'package:error404/utils/components.dart';
import 'package:error404/views/livedetection.dart';
import 'package:error404/views/report.dart';
import 'package:error404/views/viewpot.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 234, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 234, 229),
        title: Row(
          children: [
            Icon(
              Icons.home,
              color: Color.fromARGB(255, 2, 102, 112),
            ),
            SizedBox(width: 10),
            Text(
              'UrbanSolve',
              style: GoogleFonts.petrona(
                color: Color.fromARGB(255, 2, 102, 112),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 400,
          child: Button(
              text: 'View Pot-Hole Areas',
              color: Colors.purple.shade900,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewPotholeView()));
              }),
        ),
        const SizedBox(height: 40),
        Container(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReportPotholeView()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 159, 237, 215),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.report,
                  color: Color.fromARGB(255, 2, 102, 112),
                ),
                SizedBox(width: 8),
                Text(
                  'Report A Pot-Hole',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 102, 112),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ObjectDetectionScreen()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 159, 237, 215),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.gps_fixed,
                  color: Color.fromARGB(255, 2, 102, 112),
                ),
                SizedBox(width: 8),
                Text(
                  'Live-Detection',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 102, 112),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 70),
      ]),
    );
  }
}
