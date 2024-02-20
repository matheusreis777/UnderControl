import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tipo_colaborador_widget.dart' show TipoColaboradorWidget;
import 'package:flutter/material.dart';

class TipoColaboradorModel extends FlutterFlowModel<TipoColaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tipo widget.
  FocusNode? tipoFocusNode;
  TextEditingController? tipoController;
  String? Function(BuildContext, String?)? tipoControllerValidator;
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
    tipoFocusNode?.dispose();
    tipoController?.dispose();

    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
