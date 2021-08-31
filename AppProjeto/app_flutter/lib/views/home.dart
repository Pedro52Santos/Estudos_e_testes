import 'package:app_flutter/consulta/dados.dart';
import 'package:app_flutter/models/categoria_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoriaModel> categorias = <CategoriaModel>[];
  @override
  void initState() {
    super.initState();
    categorias = getCategorias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Noticias '),
            Text(
              'Brasil',
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              child: ListView.builder(
                  itemCount: categorias.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoriaBloco(
                      imagemURL: categorias[index].imagemURL,
                      categoriaNome: categorias[index].categoriaNome,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CategoriaBloco extends StatelessWidget {
  final imagemURL, categoriaNome;
  CategoriaBloco({this.imagemURL, this.categoriaNome});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              //https://api.flutter.dev/flutter/widgets/ClipRRect-class.html para deirar a borda circular como nos apps modernos
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imagemURL,
                width: 120,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                categoriaNome,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogBloco extends StatelessWidget {
  late final String imagemURL, titutlo, descricao;
  BlogBloco(
      {required this.descricao,
      required this.imagemURL,
      required this.titutlo});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(imagemURL),
          Text(titutlo),
          Text(descricao),
        ],
      ),
    );
  }
}
