import 'package:app_flutter/consulta/dados.dart';
import 'package:app_flutter/consulta/noticias.dart';
import 'package:app_flutter/models/artigo_model.dart';
import 'package:app_flutter/models/categoria_model.dart';
import 'package:app_flutter/views/artigo_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoriaModel> categorias = <CategoriaModel>[];
  List<ArtigoModel> artigos = <ArtigoModel>[];
  bool _carregar = true;
  @override
  void initState() {
    super.initState();
    categorias = getCategorias();
    getNoticias();
  }

  getNoticias() async {
    Noticias noticiasC = Noticias();
    await noticiasC.getNoticias();
    artigos = noticiasC.noticias;

    setState(() {
      _carregar = false;
    });
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
              'Pedro',
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _carregar
          ? Center(
              child: Container(
                child:
                    CircularProgressIndicator(), //icone de circulo pra indicar carrgamento do app
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    //categorias
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
                    ),
                    //noticias
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                          itemCount: artigos.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BlogBloco(
                              imagemURL: artigos[index].urldaimagem,
                              titutlo: artigos[index].titulo,
                              descricao: artigos[index].descricao,
                              url: artigos[index].url,
                            );
                          }),
                    )
                  ],
                ),
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
              child: CachedNetworkImage(
                imageUrl: imagemURL,
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
  late final String imagemURL, url, titutlo, descricao;
  BlogBloco(
      {required this.descricao,
      required this.url,
      required this.imagemURL,
      required this.titutlo});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArtigoView(
                      noticiaURL: url,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imagemURL)),
            SizedBox(
              height: 8,
            ),
            Text(
              titutlo,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              descricao,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
