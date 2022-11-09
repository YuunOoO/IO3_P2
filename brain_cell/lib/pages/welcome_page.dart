import 'package:brain_cell/pages/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              "BrainCell",
              style: TextStyle(
                  color: Colors.red,
                  inherit: false,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SpinKitFadingCube(
            color: Colors.white,
            size: 80.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          const Center(
            child: Text(
              "Wyrusz w przygodę łamigłówek i wymagających pytań aby aktywować swoje szare komórki już teraz ! ",
              style: TextStyle(
                  color: Colors.black,
                  inherit: false,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          loginButton(context),
        ],
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
            width: MediaQuery.of(context).size.width * 0.8, height: 55),
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 255, 255, 255)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(202, 119, 60, 106)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(
                            color: Color.fromARGB(125, 97, 0, 105))))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoryPage()),
              );
            },
            child: const Text('Podejmij wyzwanie!',
                style: TextStyle(fontSize: 25))));
  }
}
