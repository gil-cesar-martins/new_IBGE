// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PessoaStruct extends BaseStruct {
  PessoaStruct({
    String? nome,
    int? idade,
    int? filhos,
  })  : _nome = nome,
        _idade = idade,
        _filhos = filhos;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  set idade(int? val) => _idade = val;
  void incrementIdade(int amount) => _idade = idade + amount;
  bool hasIdade() => _idade != null;

  // "filhos" field.
  int? _filhos;
  int get filhos => _filhos ?? 0;
  set filhos(int? val) => _filhos = val;
  void incrementFilhos(int amount) => _filhos = filhos + amount;
  bool hasFilhos() => _filhos != null;

  static PessoaStruct fromMap(Map<String, dynamic> data) => PessoaStruct(
        nome: data['nome'] as String?,
        idade: castToType<int>(data['idade']),
        filhos: castToType<int>(data['filhos']),
      );

  static PessoaStruct? maybeFromMap(dynamic data) =>
      data is Map ? PessoaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'idade': _idade,
        'filhos': _filhos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'idade': serializeParam(
          _idade,
          ParamType.int,
        ),
        'filhos': serializeParam(
          _filhos,
          ParamType.int,
        ),
      }.withoutNulls;

  static PessoaStruct fromSerializableMap(Map<String, dynamic> data) =>
      PessoaStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        idade: deserializeParam(
          data['idade'],
          ParamType.int,
          false,
        ),
        filhos: deserializeParam(
          data['filhos'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PessoaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PessoaStruct &&
        nome == other.nome &&
        idade == other.idade &&
        filhos == other.filhos;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, idade, filhos]);
}

PessoaStruct createPessoaStruct({
  String? nome,
  int? idade,
  int? filhos,
}) =>
    PessoaStruct(
      nome: nome,
      idade: idade,
      filhos: filhos,
    );
