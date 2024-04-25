import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  double? valorEntrada30dias;

  double? valorSaida30dias;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (apiTotalSaidaTrintaDias)] action in HomePage widget.
  ApiCallResponse? apiResultSaida30dias;
  // Stores action output result for [Backend Call - API (apiTotalEntradaTrintaDias)] action in HomePage widget.
  ApiCallResponse? apiResultEntrada30dias;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
  }
}
