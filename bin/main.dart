import 'package:mineral/api.dart';
import 'package:apollon/application.dart';
import 'package:mineral_cache/providers/memory.dart';

void main(_, port) async {
  final client = ClientBuilder()
    .setCache((e) => MemoryProvider())
    .setHmrDevPort(port)
    .registerProvider(InfoProvider.new)
    .build();

    await client.init();
}