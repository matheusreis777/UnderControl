import '/auth/firebase_auth/auth_util.dart';
import '/componentes/item_menu/item_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'menu_lateral_model.dart';
export 'menu_lateral_model.dart';

class MenuLateralWidget extends StatefulWidget {
  const MenuLateralWidget({super.key});

  @override
  State<MenuLateralWidget> createState() => _MenuLateralWidgetState();
}

class _MenuLateralWidgetState extends State<MenuLateralWidget>
    with TickerProviderStateMixin {
  late MenuLateralModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'itemMenuOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuLateralModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (currentUserPhoto != '')
                                        AuthUserStreamWidget(
                                          builder: (context) => ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            child: Image.network(
                                              currentUserPhoto,
                                              width: 60.0,
                                              height: 60.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      if (currentUserPhoto == '')
                                        AuthUserStreamWidget(
                                          builder: (context) => Icon(
                                            Icons.location_history,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 60.0,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      currentUserDisplayName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation2']!),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (valueOrDefault<bool>(
                                        currentUserDocument?.admin, false) ==
                                    true)
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Administrador',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF1C2127),
                                            fontSize: 9.0,
                                            lineHeight: 0.99,
                                          ),
                                    ),
                                  ),
                                if (valueOrDefault<bool>(
                                        currentUserDocument?.admin, false) ==
                                    false)
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Colaborador',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF1C2127),
                                            fontSize: 9.0,
                                            lineHeight: 0.99,
                                          ),
                                    ),
                                  ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation3']!),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation1']!),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomeEmpresa');
                  },
                  child: wrapWithModel(
                    model: _model.itemMenuModel1,
                    updateCallback: () => setState(() {}),
                    child: ItemMenuWidget(
                      icon: Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 26.0,
                      ),
                      descricao: 'Home',
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['itemMenuOnPageLoadAnimation1']!),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('User');
                  },
                  child: wrapWithModel(
                    model: _model.itemMenuModel2,
                    updateCallback: () => setState(() {}),
                    child: ItemMenuWidget(
                      icon: Icon(
                        Icons.person_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 26.0,
                      ),
                      descricao: 'Perfil',
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['itemMenuOnPageLoadAnimation2']!),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Empresa');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel3,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.business_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Empresa',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation3']!),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('TipoColaborador');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel4,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.edit_note_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Tipo Colaborador',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation4']!),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('TipoServico');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel5,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.edit_note_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Tipo Serviço',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation5']!),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Colaboradores');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel6,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.people_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Colaborador',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation6']!),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Clientes');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel7,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.people_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Cliente',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation7']!),
                  ),
                if (valueOrDefault<bool>(currentUserDocument?.admin, false) ==
                    true)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Servicos');
                      },
                      child: wrapWithModel(
                        model: _model.itemMenuModel8,
                        updateCallback: () => setState(() {}),
                        child: ItemMenuWidget(
                          icon: Icon(
                            Icons.work_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 26.0,
                          ),
                          descricao: 'Serviços',
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['itemMenuOnPageLoadAnimation8']!),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('Login', context.mounted);
                        },
                        child: wrapWithModel(
                          model: _model.itemMenuModel9,
                          updateCallback: () => setState(() {}),
                          child: ItemMenuWidget(
                            icon: Icon(
                              Icons.power_settings_new_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 26.0,
                            ),
                            descricao: 'Sair',
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['itemMenuOnPageLoadAnimation9']!),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
