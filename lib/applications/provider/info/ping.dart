import 'dart:async';

import 'package:apollon/enum.dart';
import 'package:mineral/api.dart';
import 'package:mineral/container.dart';
import 'package:mineral/contracts.dart';
import 'package:mineral/services.dart';

final class PingCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext context) async {
    final datastore = ioc.resolve<DataStoreContract>();
    final Channel? logsChannel = await datastore.channel
        .getChannel(Environment().get(EnvEnum.logsChannel));
    if (logsChannel == null) {
      throw Exception("logsChannel is null");
    }

    // Extract and validate the channel ID
    final String channelId = logsChannel.id.toString(); // Ensure ID is a string
    if (!_isValidSnowflake(channelId)) {
      throw Exception("Invalid channel ID: $channelId");
    }

    // Your additional handling logic here
    print("Valid logs channel ID: $channelId");
  }

  bool _isValidSnowflake(String id) {
    final snowflakeRegex = RegExp(r'^\d+$'); // Snowflakes must be digits only
    return snowflakeRegex.hasMatch(id);
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('ping')
      ..setDescription('Check latency information about the bot')
      ..setHandle(handle);
  }
}
