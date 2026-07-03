import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'word_screen_widget.dart' show WordScreenWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class WordScreenModel extends FlutterFlowModel<WordScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getWinnerName] action in Results widget.
  String? winner;
  // Stores action output result for [Custom Action - getNextPlayer] action in Column widget.
  int? nextPlayer;
  // State field(s) for PlayTimer widget.
  final playTimerInitialTimeMs = 60000;
  int playTimerMilliseconds = 60000;
  String playTimerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController playTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer1;
  // State field(s) for PreviewTimer widget.
  final previewTimerInitialTimeMs = 10000;
  int previewTimerMilliseconds = 10000;
  String previewTimerValue = StopWatchTimer.getDisplayTime(
    10000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController previewTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    playTimerController.dispose();
    previewTimerController.dispose();
  }
}
