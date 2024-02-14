import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CointerApp extends StatefulWidget {
  const CointerApp({super.key});

  @override
  State<CointerApp> createState() => _CointerAppState();
}

class _CointerAppState extends State<CointerApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 110, 9, 187),
          title: const Center(
            child: Text(
              '- Pointer App -',
              style: TextStyle(fontFamily: 'Pacifico'),
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'El Clásico',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Protest'),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('photos/real.png')),
                    const SizedBox(
                      height: 30,
                    ),
                    Text('$teamAPoints',
                        style: const TextStyle(
                            fontSize: 120, color: Colors.white)),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text('Add 1 point')),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text('Add 2 points')),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text('Add 3 points')),
                  ],
                ),
                const SizedBox(
                  height: 430,
                  child: VerticalDivider(thickness: 1, color: Colors.white),
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('photos/barcelona.png')),
                    const SizedBox(
                      height: 30,
                    ),
                    Text('$teamBPoints',
                        style: const TextStyle(
                            fontSize: 120, color: Colors.white)),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text('Add 1 point')),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text('Add 2 points')),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 25),
                            backgroundColor:
                                const Color.fromARGB(255, 110, 9, 187)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text('Add 3 points')),
                  ],
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(175, 25),
                    backgroundColor: const Color(0xFF6E09BB)),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: const Text('RESSET')),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
