import 'package:mason/mason.dart';

void run(HookContext context) {
  final stateObject = context.vars['state_object'].toString().toLowerCase();

  final typeMap = {
    'string': 'String',
    'int': 'int',
    'double': 'double',
    'bool': 'bool',
    'num': 'num',
    'datetime': 'DateTime',
    'duration': 'Duration',
  };

  context.vars['state_object_type'] = typeMap[stateObject] ?? stateObject;
}
