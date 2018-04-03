import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular/experimental.dart';
import 'package:http/http.dart';
import 'package:http/browser_client.dart';

// ignore: uri_has_not_been_generated
import 'package:chessjam_2018_app/app_component.template.dart' as app;

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;


@GenerateInjector(const [
  const FactoryProvider(BaseClient, createBrowserClient),
])
final InjectorFactory chessjam2018App = ng.chessjam2018App$Injector;

BrowserClient createBrowserClient() => new BrowserClient();

void main() async {
  bootstrapFactory(
      app.AppComponentNgFactory,
      chessjam2018App
  );
}