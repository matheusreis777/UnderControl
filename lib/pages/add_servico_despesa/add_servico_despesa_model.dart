import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/menu/menu_widget.dart';
import 'add_servico_despesa_widget.dart' show AddServicoDespesaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddServicoDespesaModel extends FlutterFlowModel<AddServicoDespesaWidget> {
  ///  Local state fields for this page.

  bool aguarde = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for listaTipoServic widget.
  int? listaTipoServicValue;
  FormFieldController<int>? listaTipoServicValueController;
  // State field(s) for listaTipoDespesa widget.
  int? listaTipoDespesaValue;
  FormFieldController<int>? listaTipoDespesaValueController;
  // State field(s) for txtTelefoneCliente widget.
  FocusNode? txtTelefoneClienteFocusNode;
  TextEditingController? txtTelefoneClienteTextController;
  final txtTelefoneClienteMask =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      txtTelefoneClienteTextControllerValidator;
  // State field(s) for txtNomeCliente widget.
  FocusNode? txtNomeClienteFocusNode;
  TextEditingController? txtNomeClienteTextController;
  String? Function(BuildContext, String?)?
      txtNomeClienteTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiCountCliente)] action in Button widget.
  ApiCallResponse? apiResulty6f;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ClienteRow? clienteNew;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ServicoRow? inserirServico;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    txtTelefoneClienteFocusNode?.dispose();
    txtTelefoneClienteTextController?.dispose();

    txtNomeClienteFocusNode?.dispose();
    txtNomeClienteTextController?.dispose();
  }
}
