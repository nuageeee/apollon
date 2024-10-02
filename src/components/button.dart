import 'package:mineral/api.dart';

class Button {
  String id, label;
  bool isDisabled;
  late final primary, secondary, success, danger;

  Button(this.id, this.label, this.isDisabled) {
    primary = ButtonBuilder.primary(id)
      ..setLabel(label)
      ..setDisabled(isDisabled);

    secondary = ButtonBuilder.secondary(id)
      ..setLabel(label)
      ..setDisabled(isDisabled);
  }
}
