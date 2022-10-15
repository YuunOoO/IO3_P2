import 'package:brain_cell/pages/result_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    required this.category,
    Key? key,
  }) : super(key: key);

  final String category;
  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 88, 11, 177),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Text("Kategoria ${widget.category}",
                    style: const TextStyle(
                        fontSize: 25,
                        inherit: false,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                Container(
                  margin: const EdgeInsets.only(top: 8, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Pytanie $counter / 10 ",
                      style: const TextStyle(
                          fontSize: 17, inherit: false, color: Colors.white)),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(8.0),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 15,
                      overlayColor: Colors.transparent,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 10.0),
                      tickMarkShape: SliderTickMarkShape.noTickMark,
                    ),
                    child: Slider(
                      max: 10,
                      inactiveColor: Colors.black,
                      activeColor: Colors.orange,
                      value: counter.toDouble(),
                      divisions: 10,
                      onChanged: (double value) {},
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * .17,
                    minWidth: MediaQuery.of(context).size.width * .9,
                    maxWidth: MediaQuery.of(context).size.width * .9,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    child: const Text("Jakies pytanie tutaj bedzie",
                        style: TextStyle(
                            fontSize: 20,
                            inherit: false,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const Text("Wybierz poprawną odpowiedź!",
                      style: TextStyle(
                          fontSize: 20,
                          inherit: false,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
                GridView.count(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true, // You won't see infinite size error
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  crossAxisCount: 2,
                  children: [
                    answer("Odpowedz A dasfasdfasdffasd"),
                    answer("Odpowedz B dasfasdfasdffasd"),
                    answer("Odpowedz C dasfasdfasdffasd"),
                    answer("Odpowedz D dasfasdfasdffasd"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget answer(String answerText) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          if (counter < 10) {
            counter += 1;
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ResultPage()),
            );
          }
        });
      }),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 18, 204, 160),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            answerText,
            style: const TextStyle(
                fontSize: 25, inherit: false, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
