import '/components/button/button_widget.dart';
import '/components/score_card/score_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'results_screen_model.dart';
export 'results_screen_model.dart';

class ResultsScreenWidget extends StatefulWidget {
  const ResultsScreenWidget({super.key});

  static String routeName = 'ResultsScreen';
  static String routePath = '/resultsScreen';

  @override
  State<ResultsScreenWidget> createState() => _ResultsScreenWidgetState();
}

class _ResultsScreenWidgetState extends State<ResultsScreenWidget> {
  late ResultsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultsScreenModel());
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Designer_(15).png',
              ).image,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional(-1.0, -1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(-1.2, -0.8),
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 80.0,
                      sigmaY: 80.0,
                    ),
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary10,
                        borderRadius: BorderRadius.circular(9999.0),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.2, 0.5),
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 60.0,
                      sigmaY: 60.0,
                    ),
                    child: Container(
                      width: 250.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary10,
                        borderRadius: BorderRadius.circular(9999.0),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 0.0,
                              constraints: BoxConstraints(
                                minHeight: 80.0,
                              ),
                              decoration: BoxDecoration(),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Text(
                                '¡JUEGO TERMINADO!',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      fontSize: 42.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                      lineHeight: 1.25,
                                    ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 25.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.scoreCard1Model,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ScoreCardWidget(
                                      name: FFAppState().Team1Name,
                                      score: FFAppState().Team1Score.toString(),
                                      rank: '1',
                                    ),
                                  ),
                                ),
                                if (FFAppState().TeamCount >= 2)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 25.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.scoreCard2Model,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScoreCardWidget(
                                        name: FFAppState().Team2Name,
                                        score:
                                            FFAppState().Team2Score.toString(),
                                        rank: '2',
                                      ),
                                    ),
                                  ),
                                if (FFAppState().TeamCount >= 3)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 25.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.scoreCard3Model,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScoreCardWidget(
                                        name: FFAppState().Team3Name,
                                        score:
                                            FFAppState().Team3Score.toString(),
                                        rank: '3',
                                      ),
                                    ),
                                  ),
                                if (FFAppState().TeamCount >= 4)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 25.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.scoreCard4Model,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ScoreCardWidget(
                                        name: FFAppState().Team4Name,
                                        score:
                                            FFAppState().Team4Score.toString(),
                                        rank: '4',
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Container(
                                  width: 500.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0),
                                      bottomLeft: Radius.circular(25.0),
                                      bottomRight: Radius.circular(25.0),
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: FFAppState().TeamCount >= 2,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Y EL GANADOR  ES...',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().TeamCount >= 2)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 25.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary40,
                                        offset: Offset(
                                          0.0,
                                          10.0,
                                        ),
                                        spreadRadius: 0.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      width: 5.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.trophy,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 40.0,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  if (FFAppState().winnerName !=
                                                      'EMPATE')
                                                    Text(
                                                      'EL GANADOR ES ${FFAppState().winnerName}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                                lineHeight: 1.2,
                                                              ),
                                                    ),
                                                  if (FFAppState().winnerName ==
                                                      'EMPATE')
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'EMPATE',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .warning,
                                                              fontSize: 30.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                              lineHeight: 1.2,
                                                            ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Container(
                              height: 40.0,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().currentCardIndex = 0;
                                      FFAppState().currentTeam = 1;
                                      FFAppState().Team1Score = 0;
                                      FFAppState().Team2Score = 0;
                                      FFAppState().Team3Score = 0;
                                      FFAppState().Team4Score = 0;
                                      FFAppState().CurrentTurn = 1;
                                      FFAppState().CardAnswered = false;
                                      FFAppState().GameFinished = false;
                                      FFAppState().winnerName = '';
                                      safeSetState(() {});

                                      context.pushNamed(
                                          WordScreenWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        iconPresent: false,
                                        iconEndPresent: false,
                                        content: 'JUGAR DE NUEVO',
                                        variant: 'primary',
                                        size: 'large',
                                        fullWidth: true,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100.0,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().currentCardIndex = 0;
                                  FFAppState().currentTeam = 1;
                                  FFAppState().Team1Score = 0;
                                  FFAppState().Team2Score = 0;
                                  FFAppState().Team3Score = 0;
                                  FFAppState().Team4Score = 0;
                                  FFAppState().CurrentTurn = 1;
                                  FFAppState().CardAnswered = false;
                                  FFAppState().GameFinished = false;
                                  FFAppState().winnerName = '';
                                  safeSetState(() {});

                                  context
                                      .pushNamed(PlayerSetupWidget.routeName);
                                },
                                child: Icon(
                                  Icons.home_rounded,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 90.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
