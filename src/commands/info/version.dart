import 'dart:async';

import 'package:mineral/api.dart';

final class VersionCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext ctx) {
    
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('version')
      ..setDescription('SHow some information about the bot')
      ..setHandle(handle);
  }
}
