import 'dart:convert';

import 'package:flutter_bcp/models/figurines_model.dart';
import 'package:http/http.dart' as http;

class FigurinesService {
  static const _baseUrl = "https://www4.bcp.com.bo/FiguritaBCP/api/v1";

  Future getAllFigurines() async {
    final url = Uri.parse("$_baseUrl/Figurita/getAllFigurines");
    final body = {
      "auth_token": "9285e738-6c8b-486b-b04c-df860c88f383",
      "private_token": "4f925d00-384a-4fc3-8a51-550df768405a"
    };

    // print("url $url");
    // print("body $body");
    final response =
        await http.post(url, headers: getHeaders(), body: json.encode(body));

    // print("response.statusCode: ${response.statusCode}");
    // print("response ${response.body}");
    if (response.statusCode == 200) {
      return Figurines.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error al obtener los datos");
    }
  }

  getHeaders() {
    return {'content-type': 'application/json'};
  }
}
