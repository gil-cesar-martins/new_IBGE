import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pessoa = prefs
              .getStringList('ff_pessoa')
              ?.map((x) {
                try {
                  return PessoaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pessoa;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Titulo = 'NEW IBGE';
  String get Titulo => _Titulo;
  set Titulo(String value) {
    _Titulo = value;
  }

  List<PessoaStruct> _pessoa = [];
  List<PessoaStruct> get pessoa => _pessoa;
  set pessoa(List<PessoaStruct> value) {
    _pessoa = value;
    prefs.setStringList('ff_pessoa', value.map((x) => x.serialize()).toList());
  }

  void addToPessoa(PessoaStruct value) {
    _pessoa.add(value);
    prefs.setStringList(
        'ff_pessoa', _pessoa.map((x) => x.serialize()).toList());
  }

  void removeFromPessoa(PessoaStruct value) {
    _pessoa.remove(value);
    prefs.setStringList(
        'ff_pessoa', _pessoa.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPessoa(int index) {
    _pessoa.removeAt(index);
    prefs.setStringList(
        'ff_pessoa', _pessoa.map((x) => x.serialize()).toList());
  }

  void updatePessoaAtIndex(
    int index,
    PessoaStruct Function(PessoaStruct) updateFn,
  ) {
    _pessoa[index] = updateFn(_pessoa[index]);
    prefs.setStringList(
        'ff_pessoa', _pessoa.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPessoa(int index, PessoaStruct value) {
    _pessoa.insert(index, value);
    prefs.setStringList(
        'ff_pessoa', _pessoa.map((x) => x.serialize()).toList());
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  int _tamanho = 0;
  int get tamanho => _tamanho;
  set tamanho(int value) {
    _tamanho = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
