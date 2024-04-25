import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/add_item/add_item_widget.dart';
import '/pages/menu/menu_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'tipo_colaborador_model.dart';
export 'tipo_colaborador_model.dart';

class TipoColaboradorWidget extends StatefulWidget {
  const TipoColaboradorWidget({super.key});

  @override
  State<TipoColaboradorWidget> createState() => _TipoColaboradorWidgetState();
}

class _TipoColaboradorWidgetState extends State<TipoColaboradorWidget> {
  late TipoColaboradorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipoColaboradorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult10d = await ApiCountTipoColaboradorCall.call(
        empresaId: FFAppState().idEmpresa,
      );
      setState(() {
        _model.count = getJsonField(
          (_model.apiResult10d?.jsonBody ?? ''),
          r'''$''',
        );
      });
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

    return FutureBuilder<List<TipoColaboradorRow>>(
      future: (_model.requestCompleter ??= Completer<List<TipoColaboradorRow>>()
            ..complete(TipoColaboradorTable().queryRows(
              queryFn: (q) => q.eq(
                'empresa_id',
                FFAppState().idEmpresa,
              ),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).info,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TipoColaboradorRow> tipoColaboradorTipoColaboradorRowList =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).info,
            floatingActionButton: Visibility(
              visible: _model.count! > 0,
              child: FloatingActionButton(
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    isDismissible: false,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => _model.unfocusNode.canRequestFocus
                            ? FocusScope.of(context)
                                .requestFocus(_model.unfocusNode)
                            : FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            child: const AddItemWidget(
                              titulo: 'Tipo Colaborador',
                              tipo: 'tipoColaborador',
                            ),
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));

                  setState(() => _model.requestCompleter = null);
                  await _model.waitForRequestCompleted();
                },
                backgroundColor: FlutterFlowTheme.of(context).primary,
                elevation: 8.0,
                child: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              ),
            ),
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
                'Tipo Colaborador',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (_model.count == 0)
                    Expanded(
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
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Nenhum tipo de colaborador cadastrado!',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      isDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              child: const AddItemWidget(
                                                titulo: 'Tipo Colaborador',
                                                tipo: 'tipoColaborador',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    setState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                    _model.apiResult10dd =
                                        await ApiCountTipoColaboradorCall.call(
                                      empresaId: FFAppState().idEmpresa,
                                    );
                                    setState(() {
                                      _model.count = getJsonField(
                                        (_model.apiResult10dd?.jsonBody ?? ''),
                                        r'''$''',
                                      );
                                    });

                                    setState(() {});
                                  },
                                  text: 'Adicionar',
                                  options: FFButtonOptions(
                                    height: 45.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (_model.count! > 0)
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 25.0, 12.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 350.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FutureBuilder<List<TipoColaboradorRow>>(
                                  future: TipoColaboradorTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'empresa_id',
                                      FFAppState().idEmpresa,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<TipoColaboradorRow>
                                        listViewTipoColaboradorRowList =
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
                                          listViewTipoColaboradorRowList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewTipoColaboradorRow =
                                            listViewTipoColaboradorRowList[
                                                listViewIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewTipoColaboradorRow
                                                          .descricao,
                                                      'Descrição',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              thickness: 0.5,
                                              color: Color(0xFFA5B4C1),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
