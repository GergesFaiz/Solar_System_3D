import 'package:flutter/material.dart';
import 'package:solar_system_3d/Screens/planetDetailsScreen.dart';
import '../Widgets/SpaceColors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController c0ntroller = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> planets = [
    {
      "name": "Sun",
      "image": "assets/Solar_System_PNG/sun.png",
      "model": "assets/Solar_System_3D/sun.glb",
      "title": "The Sun: Our Solar System's Star",
      "about": "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, andenergy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity likesunspots and solar flares, affecting space weather and potentially disrupting Earth-basedtechnologies.",
      "distance": "0",
      "dayLength": "0",
      "orbitalPeriod": "0",
      "radius": "695,700",
      "mass": "1.989 × 10^30",
      "gravity": "274",
      "surfaceArea": "6.09 × 10^12",
    },
    {
      "name": "Mercury",
      "image": "assets/Solar_System_PNG/mercury.png",
      "model": "assets/Solar_System_3D/mercury.glb",
      "title": "Mercury: The Closest Planet",
      "about": "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, andenergy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity likesunspots and solar flares, affecting space weather and potentially disrupting Earth-basedtechnologies",
      "distance": "57,909,227",
      "dayLength": "1407.6",
      "orbitalPeriod": "0.24",
      "radius": "2,439.7",
      "mass": "3.301 × 10^23",
      "gravity": "3.7",
      "surfaceArea": "7.48 × 10^7",
    },
    {
      "name": "Venus",
      "image": "assets/Solar_System_PNG/venus.png",
      "model": "assets/Solar_System_3D/venus.glb",
      "title": "Venus: Earth's Toxic Twin",
      "about": "Venus is often referred to as Earth's twin due to its similar size and composition. However, itsthick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planetin our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, whichreflect sunlight and give it a yellowish appearance.",
      "distance": "108,209,072",
      "dayLength": "5832.2",
      "orbitalPeriod": "0.62",
      "radius": "6,051.8",
      "mass": "4.867 × 10^24",
      "gravity": "8.87",
      "surfaceArea": "4.60 × 10^8",
    },
    {
      "name": "Earth",
      "image": "assets/Solar_System_PNG/earth.png",
      "model": "assets/Solar_System_3D/earth.glb",
      "title": "Earth: Our Blue Marble",
      "about": "Earth is the only known planet in the universe that supports life. Its unique combination offactors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magneticfield protects it from harmful solar radiation, and its atmosphere helps to regulate temperatureand weather patterns.",
      "distance": "149,598,026",
      "dayLength": "23.93",
      "orbitalPeriod": "1",
      "radius": "6,371",
      "mass": "5.972 × 10^24",
      "gravity": "9.81",
      "surfaceArea": "510.1 × 10^6",
    },
    {
      "name": "Mars",
      "image": "assets/Solar_System_PNG/mars.png",
      "model": "assets/Solar_System_3D/mars.glb",
      "title": "Mars: The Red Planet",
      "about": "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime targetfor exploration due to its potential for past or present life, and NASA's Perseverance rover iscurrently searching for signs of ancient microbial life on the planet's surface.",
      "distance": "227,943,824",
      "dayLength": "24.62",
      "orbitalPeriod": "1.88",
      "radius": "3,389.5",
      "mass": "6.39 × 10^23",
      "gravity": "3.71",
      "surfaceArea": "1.45 × 10^8",
    },
    {
      "name": "Jupiter",
      "image": "assets/Solar_System_PNG/jupiter.png",
      "model": "assets/Solar_System_3D/jupiter.glb",
      "title": "Jupiter: The Gas Giant",
      "about": "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament toits turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      "distance": "778,547,669",
      "dayLength": "9.92",
      "orbitalPeriod": "11.86",
      "radius": "69,911",
      "mass": "1.898 × 10^27",
      "gravity": "24.79",
      "surfaceArea": "6.21 × 10^10",
    },
    {
      "name": "Saturn",
      "image": "assets/Solar_System_PNG/saturn.png",
      "model": "assets/Solar_System_3D/saturn.glb",
      "title": "Saturn: The Ringed Planet",
      "about": "Saturn is best known for its spectacular rings, which are composed of countless ice particles androcks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only knowncelestial body outside of Earth with liquid lakes and rivers.",
      "distance": "1,426,666,422",
      "dayLength": "10.66",
      "orbitalPeriod": "29.46",
      "radius": "58,232",
      "mass": "5.683 × 10^26",
      "gravity": "10.44",
      "surfaceArea": "4.27 × 10^10",
    },
    {
      "name": "Uranus",
      "image": "assets/Solar_System_PNG/uranus.png",
      "model": "assets/Solar_System_3D/uranus.glb",
      "title": "Uranus: The Tilted Planet",
      "about": "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      "distance": "2,870,990,000",
      "dayLength": "17.24",
      "orbitalPeriod": "84.01",
      "radius": "25,362",
      "mass": "8.681 × 10^25",
      "gravity": "8.69",
      "surfaceArea": "8.1 × 10^9",
    },
    {
      "name": "Neptune",
      "image": "assets/Solar_System_PNG/neptune.png",
      "model": "assets/Solar_System_3D/neptune.glb",
      "title": "Neptune: The Distant World",
      "about": "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be acaptured Kuiper Belt object.",
      "distance": "4,498,252,900",
      "dayLength": "16.11",
      "orbitalPeriod": "164.8",
      "radius": "24,622",
      "mass": "1.024 × 10^26",
      "gravity": "11.15",
      "surfaceArea": "7.65 × 10^9",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceColors().Black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                child: Text("Explore", style: SpaceColors().textStyle),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Which planet \nwould you like to explore?",
                  style: SpaceColors().textStyle,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 200,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: 350,
              child: PageView.builder(
                controller: c0ntroller,
                itemCount: planets.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(planets[index]["image"]!);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: SpaceColors().red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  onPressed: () {
                    if (currentIndex > 0) {
                      c0ntroller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 22,
                    color: SpaceColors().white,
                  ),
                ),
                Text(
                  planets[currentIndex]["name"]!,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: SpaceColors().white,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: SpaceColors().red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  onPressed: () {
                    if (currentIndex < planets.length - 1) {
                      c0ntroller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    size: 22,
                    color: SpaceColors().white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
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
                Navigator.pushNamed(
                  context,
                  planetDetailsScreen.routeName,
                  arguments: planets[currentIndex],
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore ${planets[currentIndex]["name"]!}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: SpaceColors().white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 22,
                      color: SpaceColors().white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
