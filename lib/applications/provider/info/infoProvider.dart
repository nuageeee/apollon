import 'package:mineral/api.dart';

import 'ping.dart';

final class InfoProvider extends Provider {
  final Client _client;

  InfoProvider(this._client) {
    _client.register(PingCommand.new);
  }
}