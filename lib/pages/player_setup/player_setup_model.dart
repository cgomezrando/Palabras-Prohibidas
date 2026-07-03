import '/backend/schema/structs/index.dart';
import '/components/button/button_widget.dart';
import '/components/player_count_option/player_count_option_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'player_setup_widget.dart' show PlayerSetupWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlayerSetupModel extends FlutterFlowModel<PlayerSetupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PlayerCountOption.
  late PlayerCountOptionModel playerCountOptionModel1;
  // Model for PlayerCountOption.
  late PlayerCountOptionModel playerCountOptionModel2;
  // Model for PlayerCountOption.
  late PlayerCountOptionModel playerCountOptionModel3;
  // Model for PlayerCountOption.
  late PlayerCountOptionModel playerCountOptionModel4;
  // Model for TextField1.
  late TextFieldModel textField1Model;
  // Model for TextField2.
  late TextFieldModel textField2Model;
  // Model for TextField3.
  late TextFieldModel textField3Model;
  // Model for TextField4.
  late TextFieldModel textField4Model;
  // Model for Button.
  late ButtonModel buttonModel;
  // Stores action output result for [Custom Action - loadAndShuffleCards] action in Button widget.
  List<QuestionStruct>? loadedCards;

  @override
  void initState(BuildContext context) {
    playerCountOptionModel1 =
        createModel(context, () => PlayerCountOptionModel());
    playerCountOptionModel2 =
        createModel(context, () => PlayerCountOptionModel());
    playerCountOptionModel3 =
        createModel(context, () => PlayerCountOptionModel());
    playerCountOptionModel4 =
        createModel(context, () => PlayerCountOptionModel());
    textField1Model = createModel(context, () => TextFieldModel());
    textField2Model = createModel(context, () => TextFieldModel());
    textField3Model = createModel(context, () => TextFieldModel());
    textField4Model = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    playerCountOptionModel1.dispose();
    playerCountOptionModel2.dispose();
    playerCountOptionModel3.dispose();
    playerCountOptionModel4.dispose();
    textField1Model.dispose();
    textField2Model.dispose();
    textField3Model.dispose();
    textField4Model.dispose();
    buttonModel.dispose();
  }
}
