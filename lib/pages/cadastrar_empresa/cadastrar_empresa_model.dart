import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrar_empresa_widget.dart' show CadastrarEmpresaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrarEmpresaModel extends FlutterFlowModel<CadastrarEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ehCpf widget.
  bool? ehCpfValue;
  // State field(s) for txtDocumentoCpf widget.
  FocusNode? txtDocumentoCpfFocusNode;
  TextEditingController? txtDocumentoCpfTextController;
  final txtDocumentoCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      txtDocumentoCpfTextControllerValidator;
  // State field(s) for txtDocumentoCnpj widget.
  FocusNode? txtDocumentoCnpjFocusNode;
  TextEditingController? txtDocumentoCnpjTextController;
  final txtDocumentoCnpjMask =
      MaskTextInputFormatter(mask: '##.###.###.###/####-##');
  String? Function(BuildContext, String?)?
      txtDocumentoCnpjTextControllerValidator;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in btnCadastrar widget.
  EmpresaRow? empresa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtDocumentoCpfFocusNode?.dispose();
    txtDocumentoCpfTextController?.dispose();

    txtDocumentoCnpjFocusNode?.dispose();
    txtDocumentoCnpjTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();
  }
}
