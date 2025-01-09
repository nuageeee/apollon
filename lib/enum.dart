import 'package:mineral/api.dart';
import 'package:mineral/contracts.dart';

enum EnvEnum implements EnvSchema {
  logsChannel('LOG_EVENT_ID', required: true);

  @override
  final String key;

  @override
  final bool required;

  const EnvEnum(this.key, {this.required = true});
}