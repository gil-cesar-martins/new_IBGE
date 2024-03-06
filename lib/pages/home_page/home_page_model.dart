import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeController;
  String? Function(BuildContext, String?)? textFieldNomeControllerValidator;
  // State field(s) for TextFieldIdade widget.
  FocusNode? textFieldIdadeFocusNode;
  TextEditingController? textFieldIdadeController;
  String? Function(BuildContext, String?)? textFieldIdadeControllerValidator;
  // State field(s) for TextFieldFilhos widget.
  FocusNode? textFieldFilhosFocusNode;
  TextEditingController? textFieldFilhosController;
  String? Function(BuildContext, String?)? textFieldFilhosControllerValidator;
  // Stores action output result for [Backend Call - API (setDados)] action in Button widget.
  ApiCallResponse? apiResultmwu;
  // Stores action output result for [Backend Call - API (getDados)] action in Button widget.
  ApiCallResponse? apiResultesg;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeController?.dispose();

    textFieldIdadeFocusNode?.dispose();
    textFieldIdadeController?.dispose();

    textFieldFilhosFocusNode?.dispose();
    textFieldFilhosController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
