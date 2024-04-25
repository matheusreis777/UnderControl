import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'dart:async';
import 'tipo_servico_widget.dart' show TipoServicoWidget;
import 'package:flutter/material.dart';

class TipoServicoModel extends FlutterFlowModel<TipoServicoWidget> {
  ///  Local state fields for this page.

  int? count = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (apiCountTipoServico)] action in TipoServico widget.
  ApiCallResponse? apiResult10dx;
  // Model for Menu component.
  late MenuModel menuModel;
  Completer<List<TipoServicoRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (apiCountTipoServico)] action in Button widget.
  ApiCallResponse? apiResult10ddz;

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
