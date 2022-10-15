import 'package:brain_cell/bloc/query_bloc/query_bloc.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/load_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_event/query_change_event.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_changed.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_loading_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state.dart';
import 'package:brain_cell/bloc/query_bloc/query_state/query_state_init.dart';
import 'package:brain_cell/models/query_model.dart';
import 'package:brain_cell/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
  int counter = 0;

  Query query = Query([
    "Odpowedz A dasfasdfasdffasd",
    "Odpowedz B dasfasdfasdffasd",
    "Odpowedz C dasfasdfasdffasd",
    "Odpowedz D dasfasdfasdffasd"
  ], 0);
  Query query2 = Query([
    "Odpowedz E dasfasdfasdffasd",
    "Odpowedz F dasfasdfasdffasd",
    "Odpowedz G dasfasdfasdffasd",
    "Odpowedz H dasfasdfasdffasd"
  ], 1);
  List<Query> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<QueryBloc>(
        create: (context) => QueryBloc(),
        child: Container(
            color: const Color.fromARGB(255, 88, 11, 177),
            child: BlocBuilder<QueryBloc, QueryState>(
              builder: (context, state) {
                if (state is QueryInitial) {
                  context.read<QueryBloc>().add(LoadEvent([
                        query,
                        query2,
                        query,
                        query,
                        query2,
                        query,
                        query2,
                        query2,
                        query2,
                        query
                      ]));
                  return shimmer();
                } else if (state is QueryChanged) {
                  return buildQuiz(state.query, context);
                } else if (state is QueryLoadingState) {
                  return checkAnswers(state.query, context);
                } else {
                  return shimmer();
                }
              },
            )),
      ),
    );
  }

  Widget shimmer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.yellow,
        child: Column(
          children: const [
            Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildQuiz(Query query, BuildContext context) {
    counter += 1;
    return ListView(
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
              child: Row(children: [
                Text("Pytanie $counter / 10 ",
                    style: const TextStyle(
                        fontSize: 17, inherit: false, color: Colors.white)),
                Expanded(child: SizedBox()),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                      "Zdobyłeś ${context.read<QueryBloc>().pointScored} punktów!",
                      style: const TextStyle(
                          fontSize: 17, inherit: false, color: Colors.green)),
                ),
              ]),
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
                answer(query.answers[0], context, 0),
                answer(query.answers[1], context, 1),
                answer(query.answers[2], context, 2),
                answer(query.answers[3], context, 3),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget checkAnswers(Query query, BuildContext context) {
    return ListView(
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
              child: Row(children: [
                Text("Pytanie $counter / 10 ",
                    style: const TextStyle(
                        fontSize: 17, inherit: false, color: Colors.white)),
                Expanded(child: SizedBox()),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                      "Zdobyłeś ${context.read<QueryBloc>().pointScored} punktów!",
                      style: const TextStyle(
                          fontSize: 17, inherit: false, color: Colors.green)),
                ),
              ]),
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
                checkAnswer(query.answers[0], context, 0),
                checkAnswer(query.answers[1], context, 1),
                checkAnswer(query.answers[2], context, 2),
                checkAnswer(query.answers[3], context, 3),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget answer(String answerText, BuildContext context2, int myAnswer) {
    return GestureDetector(
      onTap: (() async {
        context2.read<QueryBloc>().add(QueryChangeEvent(myAnswer));
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

  Widget checkAnswer(String answerText, BuildContext context2, int myAnswer) {
    if (context2.read<QueryBloc>().state is QueryLoadingState &&
        counter == 10) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResultPage(
                    pointsScored: context2.read<QueryBloc>().pointScored,
                  )),
        );
      });
    }
    Color changeColor = const Color.fromARGB(255, 18, 204, 160);
    if (context2.read<QueryBloc>().state.query.correctAnswer == myAnswer) {
      changeColor = Colors.green;
    }

    if (context2.read<QueryBloc>().myAnswer == myAnswer) {
      if (context2.read<QueryBloc>().state.query.correctAnswer == myAnswer) {
        changeColor = Colors.green;
      } else {
        changeColor = Colors.red;
      }
    }
    return Container(
      decoration: BoxDecoration(
          color: changeColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          answerText,
          style: const TextStyle(
              fontSize: 25, inherit: false, color: Colors.black),
        ),
      ),
    );
  }
}
