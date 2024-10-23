import 'package:mineral/api.dart';
import 'package:mineral_cache/providers/memory.dart';

import 'commands/help/ping.dart';
import 'commands/info/version.dart';
// import 'commands/mod/ban.dart';
import 'events/Ready.dart';

void main(_, port) async {
  final client =
      Client().setCache((e) => MemoryProvider()).setHmrDevPort(port).build();

  client.registerCommand(PingCommand.new);
  client.registerCommand(VersionCommand.new);
  // client.registerCommand(BanCommand.new);

  client.register(Ready.new);
  await client.init();
}
