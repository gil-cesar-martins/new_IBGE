import '/flutter_flow/flutter_flow_util.dart';
import 'editar_widget.dart' show EditarWidget;
import 'package:flutter/material.dart';

class EditarModel extends FlutterFlowModel<EditarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldEditar widget.
  FocusNode? textFieldEditarFocusNode;
  TextEditingController? textFieldEditarController;
  String? Function(BuildContext, String?)? textFieldEditarControllerValidator;
  // State field(s) for TextFieldEditarNome widget.
  FocusNode? textFieldEditarNomeFocusNode;
  TextEditingController? textFieldEditarNomeController;
  String? Function(BuildContext, String?)?
      textFieldEditarNomeControllerValidator;
  // State field(s) for TextFieldEditarIdade widget.
  FocusNode? textFieldEditarIdadeFocusNode;
  TextEditingController? textFieldEditarIdadeController;
  String? Function(BuildContext, String?)?
      textFieldEditarIdadeControllerValidator;
  // State field(s) for TextFieldEditarFilhos widget.
  FocusNode? textFieldEditarFilhosFocusNode;
  TextEditingController? textFieldEditarFilhosController;
  String? Function(BuildContext, String?)?
      textFieldEditarFilhosControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEditarFocusNode?.dispose();
    textFieldEditarController?.dispose();

    textFieldEditarNomeFocusNode?.dispose();
    textFieldEditarNomeController?.dispose();

    textFieldEditarIdadeFocusNode?.dispose();
    textFieldEditarIdadeController?.dispose();

    textFieldEditarFilhosFocusNode?.dispose();
    textFieldEditarFilhosController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
