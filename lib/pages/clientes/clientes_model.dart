import '/backend/backend.dart';
import '/componentes/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clientes_widget.dart' show ClientesWidget;
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Clientes widget.
  EmpresaRecord? empresaLi;
  // Stores action output result for [Firestore Query - Query a collection] action in Clientes widget.
  int? qtdClientes;
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
    menuLateralModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
