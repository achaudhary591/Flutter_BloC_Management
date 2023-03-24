import 'package:bloc_state_management/bloc/person.dart';
import 'package:flutter/foundation.dart' show immutable;

const persons1Url = 'http://10.0.2.2:8080/api/persons1.json';
const persons2Url = 'http://10.0.2.2:8080/api/persons2.json';

typedef PersonsLoader = Future<Iterable<Person>> Function(String url);

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonsAction implements LoadAction {
  final String url;
  final PersonsLoader loader;
  const LoadPersonsAction({
    required this.url,
    required this.loader,
  }) : super();
}