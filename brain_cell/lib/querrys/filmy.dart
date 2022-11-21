import 'package:brain_cell/models/query_model.dart';

class Filmy {
  List<Query> getList() {
    List<Query> list = [
      Query([
        "Tomasz Karolak",
        "Piotr Adamczyk",
        "Bogusław Linda",
        "Andrzej Grabowski"
      ], 1,
          "W polskiej komedii \"Och, Karol 2 \" rolę tytułowego Karola zagrał...?"),
      Query(["2", "3", "4", "5"], 3,
          "Ile powstało części kultowego filmu z Brucem Willisem pt.\" Szklana Pułapka \" ?"),
      Query([
        "Stanisław Tym",
        "Krzysztof Kowalewski",
        "Jerzy Turek",
        "Piotr Pręgowski"
      ], 2, "Kto zagrał rolę trenera Jarząbka w \"Misiu\" Stanisława Barei ?"),
      Query(["Tim Allen", "Eric Lloyd", "David Krumholtz", "Judge Reinhold"], 0,
          "W filmie \"Śnięty Mikołaj\" rozwieźć prezenty musi:"),
      Query(
          ["Marcin Dorociński ", "Jerzy Stuhr", "Cezary Żak", "Artur Barciś"],
          3,
          "Kto w połowie lat 80 ubiegłego wieku prowadził audycję dla najmłodszych zatytułowaną \"Okienko Pankracego\" ?"),
      Query(["Róża", "Wiola", "Laura", "Kate"], 1,
          "Jak nazywa się córka Helen i Roberta w filmie \"Iniemamocni\"?"),
      Query(["T.J. Miller", "Ryan Gosling", "Ryan Reynolds", "Ed Skrein"], 2,
          "Jaki aktor wcielił się w Deadpoola?"),
      Query(["Diagon Alley", "Private Drive", "Nora", "Grimmauld Place"], 1,
          "Jak nazywa się ulica przy której stał dom Harry'ego Pottera?"),
      Query([
        "Christopher Nolan",
        "Ridley Scott",
        "Pedro Almodovar",
        "Clint Eastwood"
      ], 0, "Kto wyreżyserował film \"Batman Początek\"?"),
      Query(["Czarna flaga", "Złoty bursztyn", "Santa Maria", "Czarna Perła"],
          3, "Jak nazywa się statek Jack'a Sparrowa?"),
    ];

    return list;
  }
}
