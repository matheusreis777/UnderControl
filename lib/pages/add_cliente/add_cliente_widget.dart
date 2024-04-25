import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_cliente_model.dart';
export 'add_cliente_model.dart';

class AddClienteWidget extends StatefulWidget {
  const AddClienteWidget({
    super.key,
    int? id,
  }) : id = id ?? 0;

  final int id;

  @override
  State<AddClienteWidget> createState() => _AddClienteWidgetState();
}

class _AddClienteWidgetState extends State<AddClienteWidget> {
  late AddClienteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddClienteModel());

    _model.txtNomeTextController ??= TextEditingController();
    _model.txtNomeFocusNode ??= FocusNode();

    _model.txtDataNascimentoTextController ??= TextEditingController();
    _model.txtDataNascimentoFocusNode ??= FocusNode();

    _model.txtEmailTextController ??= TextEditingController();
    _model.txtEmailFocusNode ??= FocusNode();

    _model.txtPhoneTextController ??= TextEditingController();
    _model.txtPhoneFocusNode ??= FocusNode();

    _model.txtCepTextController ??= TextEditingController();
    _model.txtCepFocusNode ??= FocusNode();

    _model.txtRuaTextController ??= TextEditingController();
    _model.txtRuaFocusNode ??= FocusNode();

    _model.txtNumeroTextController ??= TextEditingController();
    _model.txtNumeroFocusNode ??= FocusNode();

    _model.txtBairroTextController ??= TextEditingController();
    _model.txtBairroFocusNode ??= FocusNode();

    _model.txtComplementoTextController ??= TextEditingController();
    _model.txtComplementoFocusNode ??= FocusNode();

    _model.txtCidadeTextController ??= TextEditingController();
    _model.txtCidadeFocusNode ??= FocusNode();

    _model.txtUfTextController ??= TextEditingController();
    _model.txtUfFocusNode ??= FocusNode();

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
            'Cadastrar Cliente',
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtNomeTextController,
                                        focusNode: _model.txtNomeFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Nome',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtNomeTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 310.0,
                                      child: TextFormField(
                                        controller: _model
                                            .txtDataNascimentoTextController,
                                        focusNode:
                                            _model.txtDataNascimentoFocusNode,
                                        autofocus: false,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Data Nascimento',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.datetime,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtDataNascimentoTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          _model.txtDataNascimentoMask
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        1.0, 5.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (datePickedDate != null) {
                                          safeSetState(() {
                                            _model.datePicked = DateTime(
                                              datePickedDate.year,
                                              datePickedDate.month,
                                              datePickedDate.day,
                                            );
                                          });
                                        }
                                        setState(() {
                                          _model.txtDataNascimentoTextController
                                              ?.text = dateTimeFormat(
                                            'dd/MM/yyyy',
                                            _model.datePicked,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          );
                                        });
                                        setState(() {
                                          _model.dataNascimento =
                                              _model.datePicked;
                                        });
                                      },
                                      child: Icon(
                                        Icons.calendar_month_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 40.0,
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
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtEmailTextController,
                                        focusNode: _model.txtEmailFocusNode,
                                        autofocus: false,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'E-mail',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtEmailTextControllerValidator
                                            .asValidator(context),
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
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtPhoneTextController,
                                        focusNode: _model.txtPhoneFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Telefone',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.number,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtPhoneTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [_model.txtPhoneMask],
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
                                        0.0, 0.0, 9.0, 12.0),
                                    child: SizedBox(
                                      width: 285.0,
                                      child: TextFormField(
                                        controller: _model.txtCepTextController,
                                        focusNode: _model.txtCepFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Cep',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.number,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtCepTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [_model.txtCepMask],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var shouldSetState = false;
                                        _model.apiResultCepCliente =
                                            await ApiBuscarCepCall.call(
                                          cep: _model.txtCepTextController.text,
                                        );
                                        shouldSetState = true;
                                        if ((_model.apiResultCepCliente
                                                    ?.succeeded ??
                                                true) ==
                                            true) {
                                          setState(() {
                                            _model.txtRuaTextController?.text =
                                                ApiBuscarCepCall.logradouro(
                                              (_model.apiResultCepCliente
                                                      ?.jsonBody ??
                                                  ''),
                                            )!;
                                          });
                                          setState(() {
                                            _model.txtComplementoTextController
                                                    ?.text =
                                                ApiBuscarCepCall.complemento(
                                              (_model.apiResultCepCliente
                                                      ?.jsonBody ??
                                                  ''),
                                            )!;
                                          });
                                          setState(() {
                                            _model.txtBairroTextController
                                                    ?.text =
                                                ApiBuscarCepCall.bairro(
                                              (_model.apiResultCepCliente
                                                      ?.jsonBody ??
                                                  ''),
                                            )!;
                                          });
                                          setState(() {
                                            _model.txtCidadeTextController
                                                    ?.text =
                                                ApiBuscarCepCall.cidade(
                                              (_model.apiResultCepCliente
                                                      ?.jsonBody ??
                                                  ''),
                                            )!;
                                          });
                                          setState(() {
                                            _model.txtUfTextController?.text =
                                                ApiBuscarCepCall.uf(
                                              (_model.apiResultCepCliente
                                                      ?.jsonBody ??
                                                  ''),
                                            )!;
                                          });
                                          if (shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          setState(() {
                                            _model.txtCepTextController
                                                ?.clear();
                                            _model.txtRuaTextController
                                                ?.clear();
                                            _model.txtNumeroTextController
                                                ?.clear();
                                            _model.txtBairroTextController
                                                ?.clear();
                                            _model.txtComplementoTextController
                                                ?.clear();
                                            _model.txtCidadeTextController
                                                ?.clear();
                                            _model.txtUfTextController?.clear();
                                          });
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Cep não encontrado!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (shouldSetState) setState(() {});
                                      },
                                      text: '',
                                      icon: Icon(
                                        Icons.search_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 24.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 6.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                        10.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 256.0,
                                      child: TextFormField(
                                        controller: _model.txtRuaTextController,
                                        focusNode: _model.txtRuaFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Rua',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtRuaTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 9.0, 12.0),
                                      child: SizedBox(
                                        width: 85.0,
                                        child: TextFormField(
                                          controller:
                                              _model.txtNumeroTextController,
                                          focusNode: _model.txtNumeroFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nº',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            contentPadding:
                                                const EdgeInsets.all(20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType: TextInputType.number,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .txtNumeroTextControllerValidator
                                              .asValidator(context),
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
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtBairroTextController,
                                        focusNode: _model.txtBairroFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Bairro',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtBairroTextControllerValidator
                                            .asValidator(context),
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
                                        0.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtComplementoTextController,
                                        focusNode:
                                            _model.txtComplementoFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Complemento',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtComplementoTextControllerValidator
                                            .asValidator(context),
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
                                        10.0, 0.0, 0.0, 12.0),
                                    child: SizedBox(
                                      width: 256.0,
                                      child: TextFormField(
                                        controller:
                                            _model.txtCidadeTextController,
                                        focusNode: _model.txtCidadeFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Cidade',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context).info,
                                          contentPadding: const EdgeInsets.all(20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .txtCidadeTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 9.0, 12.0),
                                      child: SizedBox(
                                        width: 85.0,
                                        child: TextFormField(
                                          controller:
                                              _model.txtUfTextController,
                                          focusNode: _model.txtUfFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Uf',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            contentPadding:
                                                const EdgeInsets.all(20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .txtUfTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('HomePage');
                                        },
                                        text: 'Cancelar',
                                        options: FFButtonOptions(
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          elevation: 6.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.txtNomeTextController.text ==
                                            '') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Nome é obrigatório!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 2100),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          return;
                                        } else {
                                          if (_model.txtPhoneTextController
                                                  .text ==
                                              '') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Telefone é obrigatório!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2100),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            return;
                                          } else {
                                            if (_model.datePicked != null) {
                                              await ClienteTable().insert({
                                                'email': _model
                                                    .txtEmailTextController
                                                    .text,
                                                'name': _model
                                                    .txtNomeTextController.text,
                                                'phone': _model
                                                    .txtPhoneTextController
                                                    .text,
                                                'photo': '',
                                                'cep': _model
                                                    .txtCepTextController.text,
                                                'rua': _model
                                                    .txtRuaTextController.text,
                                                'numero': int.tryParse(_model
                                                    .txtNumeroTextController
                                                    .text),
                                                'complemento': _model
                                                    .txtComplementoTextController
                                                    .text,
                                                'bairro': _model
                                                    .txtBairroTextController
                                                    .text,
                                                'cidade': _model
                                                    .txtCidadeTextController
                                                    .text,
                                                'uf': _model
                                                    .txtUfTextController.text,
                                                'data_nascimento':
                                                    supaSerialize<DateTime>(
                                                        _model.dataNascimento),
                                                'empresa_id':
                                                    FFAppState().idEmpresa,
                                                'user_insert': currentUserUid,
                                              });
                                            } else {
                                              await ClienteTable().insert({
                                                'email': _model
                                                    .txtEmailTextController
                                                    .text,
                                                'name': _model
                                                    .txtNomeTextController.text,
                                                'phone': _model
                                                    .txtPhoneTextController
                                                    .text,
                                                'photo': '',
                                                'cep': _model
                                                    .txtCepTextController.text,
                                                'rua': _model
                                                    .txtRuaTextController.text,
                                                'numero': int.tryParse(_model
                                                    .txtNumeroTextController
                                                    .text),
                                                'complemento': _model
                                                    .txtComplementoTextController
                                                    .text,
                                                'bairro': _model
                                                    .txtBairroTextController
                                                    .text,
                                                'cidade': _model
                                                    .txtCidadeTextController
                                                    .text,
                                                'uf': _model
                                                    .txtUfTextController.text,
                                                'empresa_id':
                                                    FFAppState().idEmpresa,
                                                'user_insert': currentUserUid,
                                              });
                                            }

                                            context.pushNamed('Clientes');

                                            return;
                                          }
                                        }
                                      },
                                      text: 'Confirmar',
                                      options: FFButtonOptions(
                                        width: 225.0,
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 6.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
