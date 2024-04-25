import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'dart:async';
import 'tipo_colaborador_widget.dart' show TipoColaboradorWidget;
import 'package:flutter/material.dart';

class TipoColaboradorModel extends FlutterFlowModel<TipoColaboradorWidget> {
  ///  Local state fields for this page.

  int? count = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (apiCountTipoColaborador)] action in TipoColaborador widget.
  ApiCallResponse? apiResult10d;
  // Model for Menu component.
  late MenuModel menuModel;
  Completer<List<TipoColaboradorRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (apiCountTipoColaborador)] action in Button widget.
  ApiCallResponse? apiResult10dd;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
