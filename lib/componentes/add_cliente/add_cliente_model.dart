import '/flutter_flow/flutter_flow_util.dart';
import 'add_cliente_widget.dart' show AddClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddClienteModel extends FlutterFlowModel<AddClienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeCliente widget.
  FocusNode? nomeClienteFocusNode;
  TextEditingController? nomeClienteController;
  String? Function(BuildContext, String?)? nomeClienteControllerValidator;
  // State field(s) for telefoneCliente widget.
  FocusNode? telefoneClienteFocusNode;
  TextEditingController? telefoneClienteController;
  final telefoneClienteMask = MaskTextInputFormatter(mask: '(##)# ####-####');
  String? Function(BuildContext, String?)? telefoneClienteControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeClienteFocusNode?.dispose();
    nomeClienteController?.dispose();

    telefoneClienteFocusNode?.dispose();
    telefoneClienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
