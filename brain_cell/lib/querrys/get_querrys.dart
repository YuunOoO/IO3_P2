import 'dart:math';

import 'package:brain_cell/models/query_model.dart';
import 'package:brain_cell/querrys/biologia.dart';
import 'package:brain_cell/querrys/chemia.dart';
import 'package:brain_cell/querrys/filmy.dart';
import 'package:brain_cell/querrys/fizyka.dart';
import 'package:brain_cell/querrys/geografia.dart';
import 'package:brain_cell/querrys/matematyka.dart';
import 'package:brain_cell/querrys/muzyka.dart';

class GetQuerrys {
  final random = Random();

  List<Query> getQuerrys(String category) {
    List<Query> list = [];
    List<Query> list2 = [];

    if (category == 'Geografia') {
      Geografia geografia = Geografia();
      list2 = geografia.getList();
    } else if (category == 'Matematyka') {
      Matematyka matematyka = Matematyka();
      list2 = matematyka.getList();
    } else if (category == 'Muzyka') {
      Muzyka muzyka = Muzyka();
      list2 = muzyka.getList();
    } else if (category == 'Chemia') {
      Chemia chemia = Chemia();
      list2 = chemia.getList();
    } else if (category == 'Biologia') {
      Biologia biologia = Biologia();
      list2 = biologia.getList();
    } else if (category == 'Fizyka') {
      Fizyka fizyka = Fizyka();
      list2 = fizyka.getList();
    } else if (category == 'Filmy') {
      Filmy filmy = Filmy();
      list2 = filmy.getList();
    }

    List<int> takken = [];

    for (int i = 0; i < 10; i++) {
      int rand = random.nextInt(list2.length);
      while (takken.contains(rand)) {
        rand = random.nextInt(list2.length);
      }
      takken.add(rand);
      var element = list2[rand];
      list.add(element);
    }
    return list;
  }
}
