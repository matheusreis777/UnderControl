import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/botoes_vertical/botoes_vertical_widget.dart';
import '/pages/menu/menu_widget.dart';
import 'dart:async';
import 'servico_widget.dart' show ServicoWidget;
import 'package:flutter/material.dart';

class ServicoModel extends FlutterFlowModel<ServicoWidget> {
  ///  Local state fields for this page.

  int? count = 0;

  int? exibirBotoes = 0;

  DateTime? data;

  String? valorTotalSaida;

  String? valorTotalEntrada;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (apiCountServicoDia)] action in Servico widget.
  ApiCallResponse? apiResult10dxx;
  // Stores action output result for [Backend Call - API (apiTotalEntradaPorDia)] action in Servico widget.
  ApiCallResponse? retornoValorTotalEntradaDia;
  // Stores action output result for [Backend Call - API (apiTotalSaidaPorDia)] action in Servico widget.
  ApiCallResponse? retornoValorTotalSaidaDia;
  Completer<List<DadosServicosRow>>? requestCompleter;
  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (apiCountServicoDia)] action in Calendar widget.
  ApiCallResponse? apiResult10dx;
  // Stores action output result for [Backend Call - API (apiTotalEntradaPorDia)] action in Calendar widget.
  ApiCallResponse? retornoValorTotalEntradaDia2;
  // Stores action output result for [Backend Call - API (apiTotalSaidaPorDia)] action in Calendar widget.
  ApiCallResponse? retornoValorTotalSaidaDia2;
  // Stores action output result for [Backend Call - API (apiCountServicoDia)] action in Icon widget.
  ApiCallResponse? apiCountServico2resultado;
  // Stores action output result for [Backend Call - API (apiTotalEntradaPorDia)] action in Icon widget.
  ApiCallResponse? retornoValorTotalEntradaDia3;
  // Stores action output result for [Backend Call - API (apiTotalSaidaPorDia)] action in Icon widget.
  ApiCallResponse? retornoValorTotalSaidaDia3;
  // Model for botoesVertical component.
  late BotoesVerticalModel botoesVerticalModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    botoesVerticalModel = createModel(context, () => BotoesVerticalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    botoesVerticalModel.dispose();
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
