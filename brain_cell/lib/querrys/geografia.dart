import 'package:brain_cell/models/query_model.dart';

class Geografia {
  List<Query> getList() {
    List<Query> list = [
      Query([" Południk", " Równik", "Zwrotnik Raka", "Zwrotnik Koziorożca"], 0,
          "Umowna linia, która łączy obydwa bieguny to:"),
      Query([
        " Ocean Atlantycki",
        "Ocean Spokojny",
        "Ocean Indyjski",
        "Ocean Południowy"
      ], 1, "Pacyfik to inaczej:"),
      Query([" Poznań", "Kraków", "Lódź", "Wrocław"], 1,
          "Które miasto w Polsce zajmuje drugie miejsce pod względem największej liczby ludności?"),
      Query([" 6", "5", "7", " 4"], 2, "Z iloma państwami graniczy Polska? "),
      Query([" Bukareszt ", "Bratysława", "Wilno", "Ryga"], 3,
          "Stolicą Łotwy jest:  "),
      Query(
          ["We Francji", "W Arabii Saudyjskiej", "W Turcji", " W Brazylii"],
          3,
          "W którym z poniższych krajów mieszka więcej niż 100 milionów ludzi?"),
      Query([
        "W Ameryce Południowej",
        " W Azji",
        "W Afryce",
        " W Ameryce Północnej"
      ], 2, "Na jakim kontynencie położona jest Kenia?"),
      Query(["Australia", "Kanada", "Kazachstan", "Rosja"], 3,
          "Który kraj ma największą na świecie powierzchnię?"),
      Query(["Algieria", "Azerbejdżan", " Uzbekistan", " Afganistan"], 0,
          "Który z podanych krajów jest krajem Arabskim? "),
      Query(["Chiny", "Niemcy", "Stany Zjednoczone", "Korea Południowa"], 2,
          "Który kraj świata posiada najwyższy nominalny Produkt Krajowy Brutto?"),
    ];

    return list;
  }
}
