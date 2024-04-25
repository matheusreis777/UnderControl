import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/menu/menu_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_servico_despesa_model.dart';
export 'add_servico_despesa_model.dart';

class AddServicoDespesaWidget extends StatefulWidget {
  const AddServicoDespesaWidget({
    super.key,
    required this.entrada,
    required this.saida,
    required this.titulo,
  });

  final bool? entrada;
  final bool? saida;
  final String? titulo;

  @override
  State<AddServicoDespesaWidget> createState() =>
      _AddServicoDespesaWidgetState();
}

class _AddServicoDespesaWidgetState extends State<AddServicoDespesaWidget> {
  late AddServicoDespesaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddServicoDespesaModel());

    _model.txtTelefoneClienteTextController ??= TextEditingController();
    _model.txtTelefoneClienteFocusNode ??= FocusNode();

    _model.txtNomeClienteTextController ??= TextEditingController();
    _model.txtNomeClienteFocusNode ??= FocusNode();

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
            valueOrDefault<String>(
              widget.titulo,
              'Titulo',
            ),
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 350.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (widget.entrada == true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 3.0),
                                    child: FutureBuilder<List<TipoServicoRow>>(
                                      future: TipoServicoTable().queryRows(
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TipoServicoRow>
                                            listaTipoServicTipoServicoRowList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .listaTipoServicValueController ??=
                                              FormFieldController<int>(
                                            _model.listaTipoServicValue ??= 0,
                                          ),
                                          options: List<int>.from(
                                              listaTipoServicTipoServicoRowList
                                                  .map((e) => e.id)
                                                  .toList()),
                                          optionLabels:
                                              listaTipoServicTipoServicoRowList
                                                  .map((e) => e.descricao)
                                                  .withoutNulls
                                                  .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.listaTipoServicValue =
                                                  val),
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText:
                                              'Selecione o tipo do serviço',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                if (widget.saida == true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 3.0),
                                    child: FutureBuilder<List<TipoDespesaRow>>(
                                      future: TipoDespesaTable().queryRows(
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TipoDespesaRow>
                                            listaTipoDespesaTipoDespesaRowList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .listaTipoDespesaValueController ??=
                                              FormFieldController<int>(
                                            _model.listaTipoDespesaValue ??= 0,
                                          ),
                                          options: List<int>.from(
                                              listaTipoDespesaTipoDespesaRowList
                                                  .map((e) => e.id)
                                                  .toList()),
                                          optionLabels:
                                              listaTipoDespesaTipoDespesaRowList
                                                  .map((e) => e.descricao)
                                                  .withoutNulls
                                                  .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.listaTipoDespesaValue =
                                                  val),
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText:
                                              'Selecione o tipo de despesa',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 350.0,
                                height: 55.0,
                                child: custom_widgets.MoedaBRField(
                                  width: 350.0,
                                  height: 55.0,
                                  bordercolor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderRadius: 30.0,
                                  initialValue: '0.00',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (widget.entrada ?? true)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: SizedBox(
                                        width: 350.0,
                                        child: TextFormField(
                                          controller: _model
                                              .txtTelefoneClienteTextController,
                                          focusNode: _model
                                              .txtTelefoneClienteFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.txtTelefoneClienteTextController',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              setState(() {
                                                _model.aguarde = true;
                                              });
                                            },
                                          ),
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
                                              .txtTelefoneClienteTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.txtTelefoneClienteMask
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (widget.entrada ?? true)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: SizedBox(
                                        width: 350.0,
                                        child: TextFormField(
                                          controller: _model
                                              .txtNomeClienteTextController,
                                          focusNode:
                                              _model.txtNomeClienteFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Cliente',
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
                                              .txtNomeClienteTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('Servico');
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
                                        var shouldSetState = false;
                                        if (widget.entrada == true) {
                                          if (_model.listaTipoServicValue ==
                                              0) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Selecione o tipo do serviço!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2150),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }
                                        } else {
                                          if (_model.listaTipoDespesaValue ==
                                              0) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Informe o tipo de despesa!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          } else {
                                            if (FFAppState().propPrice == 0.0) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Selecione o valor!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 2150),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            } else {
                                              await ServicoTable().insert({
                                                'valor': FFAppState().propPrice,
                                                'entrada': widget.entrada,
                                                'saida': widget.saida,
                                                'empresa_id':
                                                    FFAppState().idEmpresa,
                                                'user_id': currentUserUid,
                                                'tipo_despesa_id': _model
                                                    .listaTipoDespesaValue,
                                              });
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Inserido com sucesso!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );

                                              context.pushNamed('Servico');

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          }
                                        }

                                        if (FFAppState().propPrice == 0.0) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Selecione o valor!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 2150),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          if (_model
                                                  .txtTelefoneClienteTextController
                                                  .text ==
                                              '') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Informe o telefone do cliente!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2150),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          } else {
                                            if (_model
                                                    .txtNomeClienteTextController
                                                    .text ==
                                                '') {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Informe o nome do cliente!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 2150),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            } else {
                                              _model.apiResulty6f =
                                                  await ApiCountClienteCall
                                                      .call(
                                                empresaId:
                                                    FFAppState().idEmpresa,
                                                phoneCliente: _model
                                                    .txtTelefoneClienteTextController
                                                    .text,
                                              );
                                              shouldSetState = true;
                                              if (ApiCountClienteCall.total(
                                                    (_model.apiResulty6f
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  null) {
                                                _model.clienteNew =
                                                    await ClienteTable()
                                                        .insert({
                                                  'empresa_id':
                                                      FFAppState().idEmpresa,
                                                  'user_insert': currentUserUid,
                                                  'name': _model
                                                      .txtNomeClienteTextController
                                                      .text,
                                                  'phone': _model
                                                      .txtTelefoneClienteTextController
                                                      .text,
                                                  'cpf': '',
                                                });
                                                shouldSetState = true;
                                                await ServicoTable().insert({
                                                  'tipo_servico_id': _model
                                                      .listaTipoServicValue,
                                                  'valor':
                                                      FFAppState().propPrice,
                                                  'entrada': widget.entrada,
                                                  'saida': widget.saida,
                                                  'empresa_id':
                                                      FFAppState().idEmpresa,
                                                  'cliente_id':
                                                      _model.clienteNew?.id,
                                                  'user_id': currentUserUid,
                                                  'tipo_despesa_id': _model
                                                      .listaTipoDespesaValue,
                                                });
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Inserido com sucesso!',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );

                                                context.pushNamed('Servico');

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                _model.inserirServico =
                                                    await ServicoTable()
                                                        .insert({
                                                  'tipo_servico_id': _model
                                                      .listaTipoServicValue,
                                                  'valor':
                                                      FFAppState().propPrice,
                                                  'entrada': widget.entrada,
                                                  'saida': widget.saida,
                                                  'empresa_id':
                                                      FFAppState().idEmpresa,
                                                  'cliente_id':
                                                      ApiCountClienteCall
                                                          .cliente(
                                                    (_model.apiResulty6f
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'user_id': currentUserUid,
                                                  'tipo_despesa_id': _model
                                                      .listaTipoDespesaValue,
                                                });
                                                shouldSetState = true;
                                                if (_model
                                                        .txtNomeClienteTextController
                                                        .text !=
                                                    ApiCountClienteCall
                                                        .nomeCliente(
                                                      (_model.apiResulty6f
                                                              ?.jsonBody ??
                                                          ''),
                                                    )) {
                                                  await ClienteTable().update(
                                                    data: {
                                                      'name': _model
                                                          .txtNomeClienteTextController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eq(
                                                      'id',
                                                      ApiCountClienteCall
                                                          .cliente(
                                                        (_model.apiResulty6f
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Inserido com sucesso!',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );

                                                context.pushNamed('Servico');

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }
                                            }
                                          }
                                        }

                                        if (shouldSetState) setState(() {});
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
