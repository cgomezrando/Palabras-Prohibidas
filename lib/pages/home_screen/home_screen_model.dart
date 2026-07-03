import '/components/menu_button/menu_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuButton.
  late MenuButtonModel menuButtonModel1;
  // Model for MenuButton.
  late MenuButtonModel menuButtonModel2;

  @override
  void initState(BuildContext context) {
    menuButtonModel1 = createModel(context, () => MenuButtonModel());
    menuButtonModel2 = createModel(context, () => MenuButtonModel());
  }

  @override
  void dispose() {
    menuButtonModel1.dispose();
    menuButtonModel2.dispose();
  }
}
