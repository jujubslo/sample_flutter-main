import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cadastro.dart';
import 'package:flutter_application_1/pages/camera.dart';
import 'package:flutter_application_1/pages/consultaclientes.dart';
// import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/sobre.dart';
import 'package:flutter_application_1/pages/turmas.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/sobre': (BuildContext context) => SobrePage(),
  '/consulta': (BuildContext context) => ConsultaClientesPage(),
  '/cadastro': (BuildContext context) => CadastroPage(),
  '/camera': (BuildContext context) => CameraPage(),
  '/turmas': (BuildContext context) => TurmaPage(),

  // '/': (BuildContext context) => LoginPage(),

  // Adicione mais rotas conforme necessário
};
