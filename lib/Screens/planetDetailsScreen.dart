import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../Widgets/SpaceColors.dart';

class planetDetailsScreen extends StatelessWidget {
  static const String routeName = "planetDetailsScreen";
  final Map<String, String> planet;

  planetDetailsScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceColors().Black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: Alignment.topLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.red,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(12),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/Solar_System_PNG/Rectangle_4.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      SpaceColors().Black.withOpacity(0.99),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "${planet["name"]!}",
                  style: SpaceColors().textStyle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 25,
                ),
                child: Text(planet["title"]!, style: SpaceColors().textStyle),
              ),
            ),
          ],
        ),
        toolbarHeight: 200,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              SizedBox(
                height: 350,

                child: ModelViewer(
                  src: planet["model"] ?? "",
                  alt: "A 3D model of the Sun",
                  ar: true,
                  autoRotate: true,
                  cameraControls: true,
                  backgroundColor: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                "${planet["about"]} ",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
              ),
              Text(
                "Distance from Sun (km) :${planet["distance"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Length of Day (hours) :${planet["dayLength"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Orbital Period (Earth years) :${planet["orbitalPeriod"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Radius (km) :${planet["radius"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Mass (kg) :${planet["mass"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Gravity (m/s²) : ${planet["gravity"]}",
                style: SpaceColors().text2Style,
              ),

              Text(
                "Surface Area (km²) : ${planet["surfaceArea"]}",
                style: SpaceColors().text2Style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
