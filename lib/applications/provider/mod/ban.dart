import 'dart:async';

import 'package:apollon/enum.dart';
import 'package:mineral/api.dart';
import 'package:mineral/container.dart';
import 'package:mineral/contracts.dart';
import 'package:mineral/services.dart';
import 'package:os/os.dart';

final class BanCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext interaction,
      {required Member user, required int time, required String reason}) async {
    final datastore = ioc.resolve<DataStoreContract>();
    final Channel? logsChannel = await datastore.channel
        .getChannel(Environment().get(EnvEnum.logsChannel));
    bool isValidSnowFlake(String id) {
      final snowflakeRegex = RegExp(r'^\d+$');
      return snowflakeRegex.hasMatch(id);
    }

    if (!isValidSnowFlake(logsChannel as String)) {
      throw Exception("Invald channel ID: $logsChannel");
    }
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('ban')
      ..setDescription('Allow you to ban a user')
      ..addOption(Option.integer(
          name: 'time', description: 'Ban duration', required: true))
      ..addOption(
          Option.user(name: 'user', description: 'User to ban', required: true))
      ..addOption(Option.string(
          name: 'reason', description: 'Ban reason', required: true))
      ..setHandle(handle);
  }
}
