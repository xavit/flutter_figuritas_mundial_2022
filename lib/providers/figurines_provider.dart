import 'package:flutter/material.dart';
import 'package:flutter_bcp/models/figurines_model.dart';
import 'package:flutter_bcp/services/figurines_service.dart';

class FigurinesProvider with ChangeNotifier {
  Figurines _figurines = Figurines();

  Future<Figurines> getFigurines() async {
    final figurines = await FigurinesService().getAllFigurines();
    _figurines = figurines;
    notifyListeners();
    return _figurines;
  }
}
