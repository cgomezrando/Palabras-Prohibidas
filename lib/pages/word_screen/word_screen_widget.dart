import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'word_screen_model.dart';
export 'word_screen_model.dart';

class WordScreenWidget extends StatefulWidget {
  const WordScreenWidget({super.key});

  static String routeName = 'WordScreen';
  static String routePath = '/wordScreen';

  @override
  State<WordScreenWidget> createState() => _WordScreenWidgetState();
}

class _WordScreenWidgetState extends State<WordScreenWidget> {
  late WordScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WordScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Designer_(15).png',
                  ).image,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: 1000.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                                bottomLeft: Radius.circular(32.0),
                                bottomRight: Radius.circular(32.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .transparent,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .transparent,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'TURNO ${FFAppState().CurrentTurn.toString()} DE ${FFAppState().TotalTurns.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .onPrimary,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      () {
                                                        if (FFAppState()
                                                                .currentTeam ==
                                                            1) {
                                                          return FFAppState()
                                                              .Team1Name;
                                                        } else if (FFAppState()
                                                                .currentTeam ==
                                                            2) {
                                                          return FFAppState()
                                                              .Team2Name;
                                                        } else if (FFAppState()
                                                                .currentTeam ==
                                                            3) {
                                                          return FFAppState()
                                                              .Team3Name;
                                                        } else if (FFAppState()
                                                                .currentTeam ==
                                                            4) {
                                                          return FFAppState()
                                                              .Team4Name;
                                                        } else {
                                                          return FFAppState()
                                                              .Team1Name;
                                                        }
                                                      }(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .onPrimary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                                lineHeight: 1.3,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    if (FFAppState().turnPhase ==
                                        '\"answered\"')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().currentCardIndex =
                                              FFAppState().currentCardIndex + 1;
                                          safeSetState(() {});
                                          FFAppState().CurrentTurn =
                                              FFAppState().CurrentTurn + 1;
                                          safeSetState(() {});
                                          if (FFAppState().currentTeam <
                                              FFAppState().TeamCount) {
                                            FFAppState().currentTeam =
                                                FFAppState().currentTeam + 1;
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().currentTeam = 1;
                                            safeSetState(() {});
                                          }

                                          FFAppState().CardAnswered = false;
                                          safeSetState(() {});
                                          FFAppState().turnPhase =
                                              '\"waiting\"';
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.change_circle_outlined,
                                          color: Colors.black,
                                          size: 90.0,
                                        ),
                                      ),
                                    if ((FFAppState().turnPhase ==
                                            '\"waiting\"') &&
                                        (FFAppState().CurrentTurn <=
                                            FFAppState().TotalTurns))
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().turnPhase =
                                              '\"preview\"';
                                          FFAppState().CardAnswered = false;
                                          safeSetState(() {});
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 100,
                                            ),
                                          );
                                          _model.previewTimerController
                                              .onResetTimer();

                                          _model.previewTimerController
                                              .onStartTimer();
                                        },
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Colors.black,
                                          size: 90.0,
                                        ),
                                      ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.0),
                                        topRight: Radius.circular(24.0),
                                        bottomLeft: Radius.circular(24.0),
                                        bottomRight: Radius.circular(24.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        width: 5.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'Team  1',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.trophy,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 24.0,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 70.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .Team1Score
                                                    .toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24.0),
                                      topRight: Radius.circular(24.0),
                                      bottomLeft: Radius.circular(24.0),
                                      bottomRight: Radius.circular(24.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      width: 5.0,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            'Team  2',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.trophy,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 24.0,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 70.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .Team2Score
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().TeamCount >= 3)
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.0),
                                        topRight: Radius.circular(24.0),
                                        bottomLeft: Radius.circular(24.0),
                                        bottomRight: Radius.circular(24.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        width: 5.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'Team  3',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.trophy,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 24.0,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 70.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .Team3Score
                                                    .toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().TeamCount >= 4)
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.0),
                                        topRight: Radius.circular(24.0),
                                        bottomLeft: Radius.circular(24.0),
                                        bottomRight: Radius.circular(24.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        width: 5.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'Team  4',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.trophy,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 24.0,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 70.0, 0.0, 0.0),
                                            child: Text(
                                              FFAppState()
                                                  .Team4Score
                                                  .toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if ((FFAppState().turnPhase == '\"waiting\"') &&
                                    (FFAppState().CurrentTurn >
                                        FFAppState().TotalTurns))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.winner =
                                          await actions.getWinnerName(
                                        FFAppState().Team1Name,
                                        FFAppState().Team2Name,
                                        FFAppState().Team3Name,
                                        FFAppState().Team4Name,
                                        FFAppState().Team1Score,
                                        FFAppState().Team2Score,
                                        FFAppState().Team3Score,
                                        FFAppState().Team4Score,
                                        FFAppState().TeamCount,
                                      );
                                      FFAppState().winnerName = _model.winner!;
                                      safeSetState(() {});
                                      FFAppState().GameFinished = true;
                                      safeSetState(() {});
                                      _model.playTimerController.onStopTimer();
                                      _model.previewTimerController
                                          .onStopTimer();

                                      context.pushNamed(
                                        ResultsScreenWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 1000),
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.emoji_events_rounded,
                                      color: Color(0xFFC29436),
                                      size: 90.0,
                                    ),
                                  ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed(GameRulesWidget.routeName);
                                  },
                                  child: Icon(
                                    Icons.help_outline,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 90.0,
                                  ),
                                ),
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

                                    context
                                        .pushNamed(PlayerSetupWidget.routeName);
                                  },
                                  child: Icon(
                                    Icons.home_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 90.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.nextPlayer = await actions.getNextPlayer(
                            FFAppState().currentTeam,
                            FFAppState().TeamCount,
                          );

                          safeSetState(() {});
                        },
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().turnPhase ==
                                                '\"playing\"')
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          100.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (FFAppState()
                                                              .CardAnswered ==
                                                          false) {
                                                        if (FFAppState()
                                                                .currentTeam ==
                                                            1) {
                                                          FFAppState()
                                                                  .Team1Score =
                                                              FFAppState()
                                                                      .Team1Score +
                                                                  1;
                                                          safeSetState(() {});
                                                        } else {
                                                          if (FFAppState()
                                                                  .currentTeam ==
                                                              2) {
                                                            FFAppState()
                                                                    .Team2Score =
                                                                FFAppState()
                                                                        .Team2Score +
                                                                    1;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .currentTeam ==
                                                                3) {
                                                              FFAppState()
                                                                      .Team3Score =
                                                                  FFAppState()
                                                                          .Team3Score +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              if (FFAppState()
                                                                      .currentTeam ==
                                                                  4) {
                                                                FFAppState()
                                                                        .Team4Score =
                                                                    FFAppState()
                                                                            .Team4Score +
                                                                        1;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            }
                                                          }
                                                        }

                                                        FFAppState().turnPhase =
                                                            '\"answered\"';
                                                        safeSetState(() {});
                                                        FFAppState()
                                                                .CardAnswered =
                                                            true;
                                                        safeSetState(() {});
                                                        _model
                                                            .playTimerController
                                                            .onStopTimer();
                                                      }
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary40,
                                                            offset: Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                            spreadRadius: 0.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .onPrimary,
                                                          width: 5.0,
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            24.0),
                                                        child: Container(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'ACIERTO',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w900,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                          lineHeight:
                                                                              1.3,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((FFAppState().turnPhase ==
                                                    '\"preview\"') ||
                                                (FFAppState().turnPhase ==
                                                    '\"playing\"'))
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 407.8,
                                                    height: 136.51,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF000011),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                25.0),
                                                        topRight:
                                                            Radius.circular(
                                                                25.0),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                25.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                25.0),
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 5.0,
                                                      ),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        if (FFAppState()
                                                                .turnPhase ==
                                                            '\"playing\"')
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowTimer(
                                                              initialTime: _model
                                                                  .playTimerInitialTimeMs,
                                                              getDisplayTime: (value) =>
                                                                  StopWatchTimer
                                                                      .getDisplayTime(
                                                                value,
                                                                hours: false,
                                                                milliSecond:
                                                                    false,
                                                              ),
                                                              controller: _model
                                                                  .playTimerController,
                                                              updateStateInterval:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1000),
                                                              onChanged: (value,
                                                                  displayTime,
                                                                  shouldUpdate) {
                                                                _model.playTimerMilliseconds =
                                                                    value;
                                                                _model.playTimerValue =
                                                                    displayTime;
                                                                if (shouldUpdate)
                                                                  safeSetState(
                                                                      () {});
                                                              },
                                                              onEnded:
                                                                  () async {
                                                                _model.soundPlayer1 ??=
                                                                    AudioPlayer();
                                                                if (_model
                                                                    .soundPlayer1!
                                                                    .playing) {
                                                                  await _model
                                                                      .soundPlayer1!
                                                                      .stop();
                                                                }
                                                                _model
                                                                    .soundPlayer1!
                                                                    .setVolume(
                                                                        1.0);
                                                                _model
                                                                    .soundPlayer1!
                                                                    .setAsset(
                                                                        'assets/audios/taboo_fail_premium.mp3')
                                                                    .then((_) => _model
                                                                        .soundPlayer1!
                                                                        .play());

                                                                FFAppState()
                                                                        .turnPhase =
                                                                    '\"answered\"';
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                        .CardAnswered =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model
                                                                    .playTimerController
                                                                    .onStopTimer();
                                                              },
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .orbitron(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xC9F0E80A),
                                                                    fontSize:
                                                                        100.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .turnPhase ==
                                                            '\"preview\"')
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowTimer(
                                                              initialTime: _model
                                                                  .previewTimerInitialTimeMs,
                                                              getDisplayTime: (value) =>
                                                                  StopWatchTimer
                                                                      .getDisplayTime(
                                                                value,
                                                                hours: false,
                                                                milliSecond:
                                                                    false,
                                                              ),
                                                              controller: _model
                                                                  .previewTimerController,
                                                              updateStateInterval:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1000),
                                                              onChanged: (value,
                                                                  displayTime,
                                                                  shouldUpdate) {
                                                                _model.previewTimerMilliseconds =
                                                                    value;
                                                                _model.previewTimerValue =
                                                                    displayTime;
                                                                if (shouldUpdate)
                                                                  safeSetState(
                                                                      () {});
                                                              },
                                                              onEnded:
                                                                  () async {
                                                                FFAppState()
                                                                        .turnPhase =
                                                                    '\"playing\"';
                                                                safeSetState(
                                                                    () {});
                                                                await Future
                                                                    .delayed(
                                                                  Duration(
                                                                    milliseconds:
                                                                        100,
                                                                  ),
                                                                );
                                                                _model
                                                                    .playTimerController
                                                                    .onResetTimer();

                                                                _model
                                                                    .playTimerController
                                                                    .onStartTimer();
                                                              },
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .orbitron(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xC9F0E80A),
                                                                    fontSize:
                                                                        100.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().turnPhase ==
                                                '\"playing\"')
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 100.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.soundPlayer2 ??=
                                                          AudioPlayer();
                                                      if (_model.soundPlayer2!
                                                          .playing) {
                                                        await _model
                                                            .soundPlayer2!
                                                            .stop();
                                                      }
                                                      _model.soundPlayer2!
                                                          .setVolume(1.0);
                                                      _model.soundPlayer2!
                                                          .setAsset(
                                                              'assets/audios/taboo_fail_premium.mp3')
                                                          .then((_) => _model
                                                              .soundPlayer2!
                                                              .play());

                                                      FFAppState().turnPhase =
                                                          '\"answered\"';
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .CardAnswered = true;
                                                      safeSetState(() {});
                                                      _model.playTimerController
                                                          .onStopTimer();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary40,
                                                            offset: Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                            spreadRadius: 0.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .onPrimary,
                                                          width: 5.0,
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            24.0),
                                                        child: Container(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'FALLO',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w900,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                          lineHeight:
                                                                              1.3,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      if (FFAppState().CurrentTurn <=
                                          FFAppState().TotalTurns)
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"waiting\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"answered\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      25.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      25.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      25.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          25.0),
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/Designer_(20).png',
                                                              width: 750.0,
                                                              height: 693.3,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0.0),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      25.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      25.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      25.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          25.0),
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/original-C14A2683-086B-4238-9210-907945CBC120.png',
                                                              width: 750.0,
                                                              height: 693.3,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0.0),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        270.0,
                                                                        415.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .GameCards
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .currentCardIndex)
                                                                    ?.palabraProhibida3,
                                                                '...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        36.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.89, -0.44),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        250.0,
                                                                        92.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .GameCards
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .currentCardIndex)
                                                                    ?.palabraAdivinar,
                                                                '...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    fontSize:
                                                                        36.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        270.0,
                                                                        245.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .GameCards
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .currentCardIndex)
                                                                    ?.palabraProhibida1,
                                                                '...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        36.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        270.0,
                                                                        330.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .GameCards
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .currentCardIndex)
                                                                    ?.palabraProhibida2,
                                                                '...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        36.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .turnPhase ==
                                                              '\"preview\"') ||
                                                          (FFAppState()
                                                                  .turnPhase ==
                                                              '\"playing\"'))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        270.0,
                                                                        500.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .GameCards
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .currentCardIndex)
                                                                    ?.palabraProhibida4,
                                                                '...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        36.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 0.0)),
                                        ),
                                    ].divide(SizedBox(height: 24.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
