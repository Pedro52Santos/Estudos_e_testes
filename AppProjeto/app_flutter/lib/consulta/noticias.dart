import 'dart:convert';

import 'package:app_flutter/models/artigo_model.dart';
import 'package:http/http.dart' as http;

class Noticias {
  List<ArtigoModel> noticias = [];
  Future<void> getNoticias() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c93d02a8b8c4370a83d79c1220e5a6e";

    var response = await http.get(Uri.parse(url));
    var jsonDados = jsonDecode(response.body);
    if (jsonDados['status'] == 'ok') {
      jsonDados['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArtigoModel artigoModel = new ArtigoModel(
            titulo: element['title'],
            autor: element['author'],
            descricao: element['description'],
            url: element['url'],
            urldaimagem: element['urlToImage'],
            conteudo: element['context'],
          );
          noticias.add(artigoModel);
        } else {
          print('erro numeor 1.');
        }
      });
    }
  }
}
