import 'package:brain_cell/models/query_model.dart';

class Fizyka {
  List<Query> getList() {
    List<Query> list = [
      Query([
        " Ze wschodu na południe",
        " Z zachodu na wschód",
        "Ze wschodu na zachód",
        "Z północy na południe"
      ], 1, "W którą stronę obraca się ziemia?"),
      Query([
        "  Promieniowanie rentgena",
        "Podczerwień",
        "Ultrafiolet",
        "Promieniowanie gamma"
      ], 2, "Jaki rodzaj promieniowania powoduje oparzenia słoneczne?"),
      Query([" Atomy", "Protony", "Elektrony", "Neutrony"], 2,
          "Które z cząstek elementarnych uznawane są za najmniejsze?"),
      Query(["365 dni", " 24 godziny", "28 dni", " 12 godzin"], 2,
          "W jakim czasie księżyc dokonuje pełnego obiegu wokół ziemi? "),
      Query([" Stal ", "Guma", "Woda", "Powietrze"], 0,
          "Dźwięk porusza się z różną prędkością przez materiały. Przez co przejdzie najszybciej?  "),
      Query(["Siły", "Natężenia prądu", "Prędkości", " Temperatury"], 3,
          "Czego jednostką miary w układzie SI jest Newton [N]?"),
      Query(["Resublimacja", " Krzepnięcie", "Topnienie", " Nie jest możliwe"],
          0, "Przejście ze stanu gazowego w stan stały to:"),
      Query(["Mechaniczna", "Potencjalną", "Cheiczną", "Kinetyczną"], 3,
          "Jaką energię posiada stojący człowiek?"),
      Query(["Frakcjowanie", "Dyfrakcja", " Refrakcja", " Retrakcja"], 2,
          "Jak nazywa się zjawisko ugięcia się fali świetlnej podczas przechodzenia z jednego ośrodka do drugiego? "),
      Query([
        "Przyspieszenie poruszającego się obiektu",
        "Prędkość poruszającego się obiektu",
        " Częstotliwość fal",
        " Prędkość światła w próżni"
      ], 3,
          "Równanie E = mc^2 pochodzi z teorii względności Einsteina. Co oznacza w nim literka c?"),
    ];

    return list;
  }
}
