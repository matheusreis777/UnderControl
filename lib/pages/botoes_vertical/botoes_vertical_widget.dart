import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'botoes_vertical_model.dart';
export 'botoes_vertical_model.dart';

class BotoesVerticalWidget extends StatefulWidget {
  const BotoesVerticalWidget({super.key});

  @override
  State<BotoesVerticalWidget> createState() => _BotoesVerticalWidgetState();
}

class _BotoesVerticalWidgetState extends State<BotoesVerticalWidget>
    with TickerProviderStateMixin {
  late BotoesVerticalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotoesVerticalModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 320.0.ms,
            begin: 0.15,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 440.0.ms,
            begin: 0.165,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.0,
      height: 185.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (_model.exibirBotoes == true)
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).success,
                    borderRadius: 50.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).success,
                    icon: Icon(
                      Icons.attach_money_rounded,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'AddServicoDespesa',
                        queryParameters: {
                          'entrada': serializeParam(
                            true,
                            ParamType.bool,
                          ),
                          'saida': serializeParam(
                            false,
                            ParamType.bool,
                          ),
                          'titulo': serializeParam(
                            'Adicionar Entrada',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation1']!),
                if (_model.exibirBotoes == true)
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).error,
                    borderRadius: 50.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).error,
                    icon: Icon(
                      Icons.attach_money,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'AddServicoDespesa',
                        queryParameters: {
                          'entrada': serializeParam(
                            false,
                            ParamType.bool,
                          ),
                          'saida': serializeParam(
                            true,
                            ParamType.bool,
                          ),
                          'titulo': serializeParam(
                            'Adicionar Saída',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation2']!),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 50.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                onPressed: () async {
                  if (_model.exibirBotoes == false) {
                    setState(() {
                      _model.exibirBotoes = true;
                    });
                    return;
                  } else {
                    setState(() {
                      _model.exibirBotoes = false;
                    });
                    return;
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
