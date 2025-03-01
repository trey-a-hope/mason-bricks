import 'package:mason/mason.dart';

void run(HookContext context) {
  final so = context.vars['state_object'].toString();
  final stateObject = so.toLowerCase();

  final typeMap = {
    'string': 'String',
    'int': 'int',
    'double': 'double',
    'bool': 'bool',
    'num': 'num',
    'datetime': 'DateTime',
    'duration': 'Duration',
  };

  context.vars['state_object_type'] = typeMap[stateObject] ?? so;
}
