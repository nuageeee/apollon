import 'dart:async';

import 'package:mineral/api.dart';

final class DeployCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext context) async {
    print(context.member.id);
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
        ..setName('deploy')
        ..setDescription('test')
        ..setHandle(handle);
  }
}