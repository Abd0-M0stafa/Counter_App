import 'package:flutter/material.dart';

void main() {
  runApp(const CountPoints());
}

class CountPoints extends StatefulWidget {
  const CountPoints({super.key});

  @override
  State<CountPoints> createState() => _CountPointsState();
}

class _CountPointsState extends State<CountPoints> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter..'),
        ),
        body: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      '$teamApoints',
                      style:
                          const TextStyle(fontSize: 130, color: Colors.black),
                    ),
                    costumBotton('Add 1 point', () {
                      setState(() {
                        teamApoints++;
                      });
                    }),
                    costumBotton('Add 2 points', () {
                      setState(() {
                        teamApoints += 2;
                      });
                    }),
                    costumBotton('Add 3 points', () {
                      setState(() {
                        teamApoints += 3;
                      });
                    }),
                  ],
                ),
                const SizedBox(
                  height: 370,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      '$teamBpoints',
                      style:
                          const TextStyle(fontSize: 130, color: Colors.black),
                    ),
                    costumBotton('Add 1 point', () {
                      setState(() {
                        teamBpoints++;
                      });
                    }),
                    costumBotton('Add 2 points', () {
                      setState(() {
                        teamBpoints += 2;
                      });
                    }),
                    costumBotton('Add 3 points', () {
                      setState(() {
                        teamBpoints += 3;
                      });
                    }),
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            costumBotton('RESET', () {
              setState(() {
                teamApoints = 0;
                teamBpoints = 0;
              });
            }),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget costumBotton(String text, Function() onPressed) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, fixedSize: const Size(130, 20)),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}
