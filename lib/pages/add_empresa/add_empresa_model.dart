import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_empresa_widget.dart' show AddEmpresaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddEmpresaModel extends FlutterFlowModel<AddEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ehCpf widget.
  bool? ehCpfValue;
  // State field(s) for documento widget.
  FocusNode? documentoFocusNode1;
  TextEditingController? documentoController1;
  final documentoMask1 = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? documentoController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in documento widget.
  int? existeEmpresaCnpj;
  // State field(s) for documento widget.
  FocusNode? documentoFocusNode2;
  TextEditingController? documentoController2;
  final documentoMask2 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? documentoController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in documento widget.
  int? existeEmpresaCpf;
  // State field(s) for nomeEmpresa widget.
  FocusNode? nomeEmpresaFocusNode;
  TextEditingController? nomeEmpresaController;
  String? Function(BuildContext, String?)? nomeEmpresaControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##)# ####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for site widget.
  FocusNode? siteFocusNode;
  TextEditingController? siteController;
  String? Function(BuildContext, String?)? siteControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // Stores action output result for [Backend Call - API (apiBuscarCep)] action in IconButton widget.
  ApiCallResponse? apiResult;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
  // State field(s) for uf widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufController;
  String? Function(BuildContext, String?)? ufControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in cadastrar widget.
  EmpresaRecord? empresaAdd;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    documentoFocusNode1?.dispose();
    documentoController1?.dispose();

    documentoFocusNode2?.dispose();
    documentoController2?.dispose();

    nomeEmpresaFocusNode?.dispose();
    nomeEmpresaController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    siteFocusNode?.dispose();
    siteController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeController?.dispose();

    ufFocusNode?.dispose();
    ufController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
