import 'package:app_flutter/consulta/dados.dart';
import 'package:app_flutter/models/categoria_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//-----------------------------------------------------------18:36
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
              child: ListView.builder(
                  itemCount: categorias.length,
                  shrinkWrap: true,
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
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(
            imagemURL,
            width: 120,
            height: 80,
          )
        ],
      ),
    );
  }
}
