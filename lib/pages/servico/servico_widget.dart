import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/botoes_vertical/botoes_vertical_widget.dart';
import '/pages/menu/menu_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'servico_model.dart';
export 'servico_model.dart';

class ServicoWidget extends StatefulWidget {
  const ServicoWidget({super.key});

  @override
  State<ServicoWidget> createState() => _ServicoWidgetState();
}

class _ServicoWidgetState extends State<ServicoWidget>
    with TickerProviderStateMixin {
  late ServicoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult10dxx = await ApiCountServicoDiaCall.call(
        empresaId: FFAppState().idEmpresa,
        dataTexto: functions.dataParaString(_model.calendarSelectedDay?.start),
      );
      _model.retornoValorTotalEntradaDia = await ApiTotalEntradaPorDiaCall.call(
        empresaId: FFAppState().idEmpresa,
        dataString: functions.dataParaString(_model.calendarSelectedDay?.start),
      );
      _model.retornoValorTotalSaidaDia = await ApiTotalSaidaPorDiaCall.call(
        empresaId: FFAppState().idEmpresa,
        dataString: functions.dataParaString(_model.calendarSelectedDay?.start),
      );
      setState(() {
        _model.data = _model.calendarSelectedDay?.start;
        _model.count = getJsonField(
          (_model.apiResult10dxx?.jsonBody ?? ''),
          r'''$''',
        );
        _model.valorTotalEntrada = functions.mascaraValorReal(getJsonField(
          (_model.retornoValorTotalEntradaDia?.jsonBody ?? ''),
          r'''$''',
        ));
        _model.valorTotalSaida = functions.mascaraValorReal(getJsonField(
          (_model.retornoValorTotalSaidaDia?.jsonBody ?? ''),
          r'''$''',
        ));
      });
      setState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
    });

    animationsMap.addAll({
      'calendarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menuModel,
            updateCallback: () => setState(() {}),
            child: const MenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).info,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.menu_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            'Serviços',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 350.0,
                          height: 142.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowCalendar(
                            color: FlutterFlowTheme.of(context).primary,
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            weekFormat: true,
                            weekStartsMonday: false,
                            initialDate: getCurrentTimestamp,
                            rowHeight: 60.0,
                            onChange: (DateTimeRange? newSelectedDate) async {
                              if (_model.calendarSelectedDay ==
                                  newSelectedDate) {
                                return;
                              }
                              _model.calendarSelectedDay = newSelectedDate;
                              _model.apiResult10dx =
                                  await ApiCountServicoDiaCall.call(
                                empresaId: FFAppState().idEmpresa,
                                dataTexto: functions.dataParaString(
                                    _model.calendarSelectedDay?.start),
                              );
                              _model.retornoValorTotalEntradaDia2 =
                                  await ApiTotalEntradaPorDiaCall.call(
                                empresaId: FFAppState().idEmpresa,
                                dataString: functions.dataParaString(
                                    _model.calendarSelectedDay?.start),
                              );
                              _model.retornoValorTotalSaidaDia2 =
                                  await ApiTotalSaidaPorDiaCall.call(
                                empresaId: FFAppState().idEmpresa,
                                dataString: functions.dataParaString(
                                    _model.calendarSelectedDay?.start),
                              );
                              setState(() {
                                _model.data = _model.calendarSelectedDay?.start;
                                _model.count = getJsonField(
                                  (_model.apiResult10dx?.jsonBody ?? ''),
                                  r'''$''',
                                );
                                _model.valorTotalEntrada =
                                    functions.mascaraValorReal(getJsonField(
                                  (_model.retornoValorTotalEntradaDia2
                                          ?.jsonBody ??
                                      ''),
                                  r'''$''',
                                ));
                                _model.valorTotalSaida =
                                    functions.mascaraValorReal(getJsonField(
                                  (_model.retornoValorTotalSaidaDia2
                                          ?.jsonBody ??
                                      ''),
                                  r'''$''',
                                ));
                              });
                              setState(() => _model.requestCompleter = null);
                              await _model.waitForRequestCompleted();
                              setState(() {});
                            },
                            titleStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                            dayOfWeekStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            dateStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            selectedDateStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            inactiveDateStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            locale: FFLocalizations.of(context).languageCode,
                          ).animateOnPageLoad(
                              animationsMap['calendarOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                    if (_model.count != 0)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 350.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Totais do dia',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 5.0,
                                    thickness: 0.6,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Total Saída',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Text(
                                              _model.valorTotalSaida!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Total Entrada',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Text(
                                              _model.valorTotalEntrada!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(
                                      animationsMap['rowOnPageLoadAnimation']!),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (_model.count != 0)
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 25.0, 12.0, 25.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 350.0,
                                    height: 420.0,
                                    decoration: const BoxDecoration(),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child:
                                          FutureBuilder<List<DadosServicosRow>>(
                                        future: (_model.requestCompleter ??=
                                                Completer<
                                                    List<DadosServicosRow>>()
                                                  ..complete(
                                                      DadosServicosTable()
                                                          .queryRows(
                                                    queryFn: (q) => q
                                                        .eq(
                                                          'empresa_id',
                                                          FFAppState()
                                                              .idEmpresa,
                                                        )
                                                        .eq(
                                                          'data_criacao_texto',
                                                          functions.dataParaString(
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start),
                                                        ),
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<DadosServicosRow>
                                              listViewDadosServicosRowList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: const EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              10.0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewDadosServicosRowList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewDadosServicosRow =
                                                  listViewDadosServicosRowList[
                                                      listViewIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                if (listViewDadosServicosRow
                                                                        .saida ==
                                                                    true)
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewDadosServicosRow
                                                                          .descricaoTipoDespesa,
                                                                      'Tipo Despesa',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                if (listViewDadosServicosRow
                                                                        .entrada ==
                                                                    true)
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewDadosServicosRow
                                                                          .descricaoTipoServico,
                                                                      'Tipo Serviço',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                if (listViewDadosServicosRow
                                                                        .saida ==
                                                                    true)
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      functions.mascaraValorReal(
                                                                          listViewDadosServicosRow
                                                                              .valor),
                                                                      '0.00',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                if (listViewDadosServicosRow
                                                                        .entrada ==
                                                                    true)
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      functions.mascaraValorReal(
                                                                          listViewDadosServicosRow
                                                                              .valor),
                                                                      '0.00',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                              ],
                                                            ),
                                                            if (listViewDadosServicosRow
                                                                    .entrada ==
                                                                true)
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'Cliente: ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewDadosServicosRow
                                                                          .nomeCliente,
                                                                      'Telefone',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    ' - ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewDadosServicosRow
                                                                          .telefoneCliente,
                                                                      'Nome Cliente',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Cadastrado por ${listViewDadosServicosRow.nomeUsuario}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  dateTimeFormat(
                                                                    'dd/MM/yyyy hh:mm',
                                                                    functions.dataLocal(
                                                                        listViewDadosServicosRow
                                                                            .createdAt),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 60.0,
                                                        child: VerticalDivider(
                                                          thickness: 0.6,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var shouldSetState =
                                                                  false;
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                const Text('Deseja remover o serviço?'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: const Text('Cancelar'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: const Text('Confirmar'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                await ServicoTable()
                                                                    .delete(
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eq(
                                                                    'id',
                                                                    listViewDadosServicosRow
                                                                        .id,
                                                                  ),
                                                                );
                                                                _model.apiCountServico2resultado =
                                                                    await ApiCountServicoDiaCall
                                                                        .call(
                                                                  empresaId:
                                                                      FFAppState()
                                                                          .idEmpresa,
                                                                  dataTexto: functions
                                                                      .dataParaString(_model
                                                                          .calendarSelectedDay
                                                                          ?.start),
                                                                );
                                                                shouldSetState =
                                                                    true;
                                                                _model.retornoValorTotalEntradaDia3 =
                                                                    await ApiTotalEntradaPorDiaCall
                                                                        .call(
                                                                  empresaId:
                                                                      FFAppState()
                                                                          .idEmpresa,
                                                                  dataString: functions
                                                                      .dataParaString(_model
                                                                          .calendarSelectedDay
                                                                          ?.start),
                                                                );
                                                                shouldSetState =
                                                                    true;
                                                                _model.retornoValorTotalSaidaDia3 =
                                                                    await ApiTotalSaidaPorDiaCall
                                                                        .call(
                                                                  empresaId:
                                                                      FFAppState()
                                                                          .idEmpresa,
                                                                  dataString: functions
                                                                      .dataParaString(_model
                                                                          .calendarSelectedDay
                                                                          ?.start),
                                                                );
                                                                shouldSetState =
                                                                    true;
                                                                setState(() {
                                                                  _model.data = _model
                                                                      .calendarSelectedDay
                                                                      ?.start;
                                                                  _model.count =
                                                                      getJsonField(
                                                                    (_model.apiCountServico2resultado
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$''',
                                                                  );
                                                                  _model.valorTotalEntrada =
                                                                      functions
                                                                          .mascaraValorReal(
                                                                              getJsonField(
                                                                    (_model.retornoValorTotalEntradaDia3
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$''',
                                                                  ));
                                                                  _model.valorTotalSaida =
                                                                      functions
                                                                          .mascaraValorReal(
                                                                              getJsonField(
                                                                    (_model.retornoValorTotalSaidaDia3
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$''',
                                                                  ));
                                                                });
                                                                setState(() =>
                                                                    _model.requestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted();
                                                              } else {
                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                                return;
                                                              }

                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_forever_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 34.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(
                                                    thickness: 0.5,
                                                    color: Color(0xFFA5B4C1),
                                                  ),
                                                ],
                                              );
                                            },
                                          ).animateOnPageLoad(animationsMap[
                                              'listViewOnPageLoadAnimation']!);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (_model.count == 0)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 550.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Lottie.asset(
                                        'assets/lottie_animations/Animation_-_vazio.json',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                        animate: true,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Nenhum serviço cadastrado!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ],
                      ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.9, 0.93),
                child: wrapWithModel(
                  model: _model.botoesVerticalModel,
                  updateCallback: () => setState(() {}),
                  child: const BotoesVerticalWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
