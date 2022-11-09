import 'package:brain_cell/pages/quizz_page.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView(
        children: [
          const Center(
            child: Text(
              "Wybierz kategorie!",
              style: TextStyle(
                fontSize: 34,
                inherit: false,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.count(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            shrinkWrap: true, // You won't see infinite size error
            crossAxisSpacing: 14,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: [
              category('Geografia'),
              category('Matematyka'),
              category('Muzyka'),
              category('Chemia'),
              category('Biologia'),
              category('Fizyka'),
              category('Filmy'),
            ],
          ),
        ],
      ),
    );
  }

  Widget category(String categoryName) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QuizzPage(category: categoryName)),
        );
      }),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 103, 144, 141),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(
                fontSize: 25, inherit: false, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
