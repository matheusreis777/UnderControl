import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_item_model.dart';
export 'add_item_model.dart';

class AddItemWidget extends StatefulWidget {
  const AddItemWidget({
    super.key,
    required this.titulo,
    required this.tipo,
  });

  final String? titulo;
  final String? tipo;

  @override
  State<AddItemWidget> createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  late AddItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddItemModel());

    _model.descricaoTextController ??= TextEditingController();
    _model.descricaoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 70.0, 0.0),
        child: Container(
          width: 350.0,
          height: 222.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).info,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.titulo,
                    'Titulo',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.65,
                  child: TextFormField(
                    controller: _model.descricaoTextController,
                    focusNode: _model.descricaoFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Descrição',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Poppins',
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                      errorStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).error,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _model.erro == 1
                              ? FlutterFlowTheme.of(context).error
                              : FlutterFlowTheme.of(context).secondaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).info,
                      contentPadding: const EdgeInsets.all(20.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator: _model.descricaoTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              if (_model.erro == 1)
                Text(
                  '*Informe a descrição!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).error,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: 110.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).info,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.descricaoTextController.text == '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Informe a descrição!',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 2000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            setState(() {
                              _model.erro = 1;
                            });
                            return;
                          } else {
                            setState(() {
                              _model.erro = 0;
                            });
                            if (widget.tipo == 'tipoColaborador') {
                              await TipoColaboradorTable().insert({
                                'descricao':
                                    _model.descricaoTextController.text,
                                'empresa_id': FFAppState().idEmpresa,
                              });
                              Navigator.pop(context);
                              return;
                            } else {
                              if (widget.tipo == 'tipoServico') {
                                await TipoServicoTable().insert({
                                  'descricao':
                                      _model.descricaoTextController.text,
                                  'empresa_id': FFAppState().idEmpresa,
                                });
                                Navigator.pop(context);
                                return;
                              } else {
                                if (widget.tipo == 'tipoDespesa') {
                                  await TipoDespesaTable().insert({
                                    'descricao':
                                        _model.descricaoTextController.text,
                                    'empresa_id': FFAppState().idEmpresa,
                                  });
                                  Navigator.pop(context);
                                  return;
                                } else {
                                  Navigator.pop(context);
                                }
                              }

                              return;
                            }
                          }
                        },
                        text: 'Confirmar',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 45.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
