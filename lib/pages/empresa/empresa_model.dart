import '/backend/api_requests/api_calls.dart';
import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empresa_widget.dart' show EmpresaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EmpresaModel extends FlutterFlowModel<EmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ehCpf widget.
  bool? ehCpfValue;
  // State field(s) for documentoCnpj widget.
  FocusNode? documentoCnpjFocusNode;
  TextEditingController? documentoCnpjController;
  final documentoCnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? documentoCnpjControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in documentoCnpj widget.
  int? existeEmpresaCnpj;
  // State field(s) for documentoCpf widget.
  FocusNode? documentoCpfFocusNode;
  TextEditingController? documentoCpfController;
  final documentoCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? documentoCpfControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in documentoCpf widget.
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
  // State field(s) for cepEmpresa widget.
  FocusNode? cepEmpresaFocusNode;
  TextEditingController? cepEmpresaController;
  final cepEmpresaMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepEmpresaControllerValidator;
  // Stores action output result for [Backend Call - API (apiBuscarCep)] action in IconButton widget.
  ApiCallResponse? apiResult;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for numeroEmpresa widget.
  FocusNode? numeroEmpresaFocusNode;
  TextEditingController? numeroEmpresaController;
  String? Function(BuildContext, String?)? numeroEmpresaControllerValidator;
  // State field(s) for bairroEmpresa widget.
  FocusNode? bairroEmpresaFocusNode;
  TextEditingController? bairroEmpresaController;
  String? Function(BuildContext, String?)? bairroEmpresaControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for cidadeEmpresa widget.
  FocusNode? cidadeEmpresaFocusNode;
  TextEditingController? cidadeEmpresaController;
  String? Function(BuildContext, String?)? cidadeEmpresaControllerValidator;
  // State field(s) for uf widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufController;
  String? Function(BuildContext, String?)? ufControllerValidator;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    documentoCnpjFocusNode?.dispose();
    documentoCnpjController?.dispose();

    documentoCpfFocusNode?.dispose();
    documentoCpfController?.dispose();

    nomeEmpresaFocusNode?.dispose();
    nomeEmpresaController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    siteFocusNode?.dispose();
    siteController?.dispose();

    cepEmpresaFocusNode?.dispose();
    cepEmpresaController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    numeroEmpresaFocusNode?.dispose();
    numeroEmpresaController?.dispose();

    bairroEmpresaFocusNode?.dispose();
    bairroEmpresaController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    cidadeEmpresaFocusNode?.dispose();
    cidadeEmpresaController?.dispose();

    ufFocusNode?.dispose();
    ufController?.dispose();

    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
