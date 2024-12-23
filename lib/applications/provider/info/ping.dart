import 'dart:async';

import 'package:mineral/api.dart';

final class PingCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext context) {
    print('tesr');
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
        ..setName('ping')
        ..setDescription('Check latency information about the bot')
        ..setHandle(handle);
  }
}