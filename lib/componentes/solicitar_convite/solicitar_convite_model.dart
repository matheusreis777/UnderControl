import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'solicitar_convite_widget.dart' show SolicitarConviteWidget;
import 'package:flutter/material.dart';

class SolicitarConviteModel extends FlutterFlowModel<SolicitarConviteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ddTipoColaborador widget.
  String? ddTipoColaboradorValue;
  FormFieldController<String>? ddTipoColaboradorValueController;
  // State field(s) for emailConvite widget.
  FocusNode? emailConviteFocusNode;
  TextEditingController? emailConviteController;
  String? Function(BuildContext, String?)? emailConviteControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  EmpresaRecord? empresaLista;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailConviteFocusNode?.dispose();
    emailConviteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
