import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBarEmpresa widget.
  TabController? tabBarEmpresaController;
  int get tabBarEmpresaCurrentIndex =>
      tabBarEmpresaController != null ? tabBarEmpresaController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for nomeCreate widget.
  FocusNode? nomeCreateFocusNode;
  TextEditingController? nomeCreateController;
  String? Function(BuildContext, String?)? nomeCreateControllerValidator;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode;
  TextEditingController? emailCreateController;
  String? Function(BuildContext, String?)? emailCreateControllerValidator;
  // State field(s) for criarSenha widget.
  FocusNode? criarSenhaFocusNode;
  TextEditingController? criarSenhaController;
  late bool criarSenhaVisibility;
  String? Function(BuildContext, String?)? criarSenhaControllerValidator;
  // State field(s) for confirmSenha widget.
  FocusNode? confirmSenhaFocusNode;
  TextEditingController? confirmSenhaController;
  late bool confirmSenhaVisibility;
  String? Function(BuildContext, String?)? confirmSenhaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    criarSenhaVisibility = false;
    confirmSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarEmpresaController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    nomeCreateFocusNode?.dispose();
    nomeCreateController?.dispose();

    emailCreateFocusNode?.dispose();
    emailCreateController?.dispose();

    criarSenhaFocusNode?.dispose();
    criarSenhaController?.dispose();

    confirmSenhaFocusNode?.dispose();
    confirmSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
