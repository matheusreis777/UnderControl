import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_servico_widget.dart' show AddServicoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddServicoModel extends FlutterFlowModel<AddServicoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for ddTipoServico widget.
  String? ddTipoServicoValue;
  FormFieldController<String>? ddTipoServicoValueController;
  // State field(s) for nomeCliente widget.
  FocusNode? nomeClienteFocusNode;
  TextEditingController? nomeClienteController;
  String? Function(BuildContext, String?)? nomeClienteControllerValidator;
  // State field(s) for telefoneCliente widget.
  FocusNode? telefoneClienteFocusNode;
  TextEditingController? telefoneClienteController;
  final telefoneClienteMask = MaskTextInputFormatter(mask: '(##)# ####-####');
  String? Function(BuildContext, String?)? telefoneClienteControllerValidator;
  // State field(s) for chEntrada widget.
  bool? chEntradaValue;
  // State field(s) for chSaida widget.
  bool? chSaidaValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? qtdCliente;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuLateralModel.dispose();
    nomeClienteFocusNode?.dispose();
    nomeClienteController?.dispose();

    telefoneClienteFocusNode?.dispose();
    telefoneClienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
