import 'package:app_flutter/models/categoria_model.dart';

List<CategoriaModel> getCategorias() {
  List<CategoriaModel> categoria =
      []; // lista de objetos do tipo modelo de categoria.
  CategoriaModel categoriaModel = new CategoriaModel();

  //1
  categoriaModel.categoriaNome = 'Política';
  categoriaModel.imagemURL =
      'https://diariodegoias.com.br/wp-content/uploads/2017/11/congresso_foto__flavio_soares_camara_dos_deputados.jpg';
  categoria.add(categoriaModel);
  categoriaModel = new CategoriaModel();
  //2
  categoriaModel.categoriaNome = 'Entretenimento';
  categoriaModel.imagemURL =
      'https://computerworld.com.br/wp-content/uploads/2020/10/Pandemia-impulsionou-transforma%C3%A7%C3%A3o-digital-no-setor-de-entretenimento.jpg';
  categoria.add(categoriaModel);
  categoriaModel = new CategoriaModel();
  //3
  categoriaModel.categoriaNome = 'Esporte';
  categoriaModel.imagemURL =
      'https://cdn.abcdoabc.com.br/Depositphotos-esportes_b9f77627.jpg';
  categoria.add(categoriaModel);
  categoriaModel = new CategoriaModel();
  //4
  categoriaModel.categoriaNome = 'Econômia';
  categoriaModel.imagemURL =
      'https://s2.glbimg.com/CRn0izUsu93VVZ_N9_gLoSk4OE8=/0x0:1273x824/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2021/m/B/9shvfqRiCFyyAw6XCDkA/economia-pos-pandemia.jpg';
  categoria.add(categoriaModel);
  categoriaModel = new CategoriaModel();

  return categoria;
}
