import 'package:brain_cell/models/query_model.dart';

class Muzyka {
  List<Query> getList() {
    List<Query> list = [
      Query([" Perfectu", " Budki Suflera", "Lady Panku", "Republiki"], 3,
          "\"Biała flaga\" to przebój:"),
      Query(["Piersi", "Armia", "Brygada Kryzys", "Kryzys"], 2,
          "Piosenkę \"Wojna!\" wykonywał zespół:"),
      Query([
        "Napoleonowi",
        "Aleksandrowi Wielkiemu",
        "Janowi Sobieskiemu",
        "Franciszkowi Józefowi"
      ], 0,
          "Komu pierwotnie Beethoven dedykował swoją Trzecią Symfonię (Eroicę)?"),
      Query([" Jednym", "Dwóch", "Trzech", " Czterech"], 2,
          "W ilu oficjalnych singlach składu Męskie Granie Orkiestra śpiewał Dawid Podsiadło? "),
      Query(["C-Bool ", "Gromee", "DJ Hazel", "Tujamo"], 1,
          "To producent muzyczny pochodzący z Krakowa. Tworzy muzykę klubową, był reprezentantem Polski w 63. Konkursie Piosenki Eurowizji. Tworzył ,wraz z zespołem Golec uOrkiestra (singiel \"Górą Ty\"), czy Edytą Górniak. "),
      Query([" Kwinta", "Kwarta", "Tercja", " Seksta"], 0,
          "Który z interwałów określa większą odległość pomiędzy liczbą stopni skali muzycznej?"),
      Query(["Nie liczę godzin i lat", "Macarena", " Kaczuchy", " Lambada"], 2,
          "Jak nazywana jest francuska piosenka ludowa, bardzo popularna w latach 60. i 70., która została przetłumaczona na około 140 języków. W Polsce jest nieodłączną częścią przyjęć weselnych."),
      Query(["Elton John", " Ed Sheeran", "Sting", "Harry Styles"], 1,
          "Który angielski muzyk śpiewał w piosence Rudimental pt. \"Lay It All On Me\" oraz w singlu Taylor Swift \"Everything Has Changed\"?"),
      Query(["Tamburyn", "Kongi", " Bongosy", " Trynka"], 0,
          "Bębenek bakijski to inaczej:"),
      Query(["Taco Hemingway", "PRO8L3M", "Quebonafide", "  Mata"], 3,
          "Który z tych artystów w 2021 r. został odznaczony Fryderykiem za album roku w kategorii Hip-Hop?"),
    ];

    return list;
  }
}
