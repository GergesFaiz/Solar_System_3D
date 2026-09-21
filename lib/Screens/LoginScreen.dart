
import 'package:flutter/material.dart';
import 'package:solar_system_3d/Screens/HomeScreen.dart';
import 'package:solar_system_3d/Widgets/SpaceColors.dart';

class Loginscreen extends StatelessWidget {
  static const String routeName="Loginscreen";
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceColors().Black,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Solar_System_PNG/Frame.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Explore\nThe\nUniverse",
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w900,
                            color: SpaceColors().white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: SpaceColors().red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: SpaceColors().white,
                            ),
                          ),
                          Icon(
                            size: 22,
                            Icons.arrow_forward,
                            color: SpaceColors().white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),

    );
  }
}
