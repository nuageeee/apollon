import 'package:apollon/events/modEvent/ServerBanAdd.dart';
import 'package:mineral/api.dart';

import 'Ready.dart';

final class EventsProvider extends Provider {
  final Client _client;

  EventsProvider(this._client) {
    _client.register(Ready.new);
    _client.register(ServerBanAdd.new);
  }
}