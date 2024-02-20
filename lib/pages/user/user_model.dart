import '/backend/api_requests/api_calls.dart';
import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_widget.dart' show UserWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserModel extends FlutterFlowModel<UserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nomeUser widget.
  FocusNode? nomeUserFocusNode;
  TextEditingController? nomeUserController;
  String? Function(BuildContext, String?)? nomeUserControllerValidator;
  // State field(s) for datanascimento widget.
  FocusNode? datanascimentoFocusNode;
  TextEditingController? datanascimentoController;
  final datanascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? datanascimentoControllerValidator;
  // State field(s) for telefoneUser widget.
  FocusNode? telefoneUserFocusNode;
  TextEditingController? telefoneUserController;
  final telefoneUserMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? telefoneUserControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // Stores action output result for [Backend Call - API (apiBuscarCep)] action in IconButton widget.
  ApiCallResponse? apiResultado;
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
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
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
    nomeUserFocusNode?.dispose();
    nomeUserController?.dispose();

    datanascimentoFocusNode?.dispose();
    datanascimentoController?.dispose();

    telefoneUserFocusNode?.dispose();
    telefoneUserController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeController?.dispose();

    ufFocusNode?.dispose();
    ufController?.dispose();

    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
