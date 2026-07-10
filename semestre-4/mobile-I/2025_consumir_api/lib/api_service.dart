import 'dart:convert';

import 'package:consumir_api/character.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://api.disneyapi.dev/character";

  // GET BY ID
  Future<Character?> getById(int index) async {
    final response = await http.get(Uri.parse("$baseUrl/$index"));

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      return Character.fromMap(body);
    } else {
      return null;
    }
  }

  // GET ALL
  Future<List<Character>> getAll() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List<dynamic> data = body['data'];

      return data.map((dynamic item) {
        return Character.fromMap(item);
      }).toList();
    } else {
      return [];
    }
  }
}
