import 'package:mason/mason.dart';

void run(HookContext context) {
  final so = context.vars['state_object'].toString();
  final stateObject = so.toLowerCase();
  final isMultiple = context.vars['is_multiple'] as bool? ?? false;

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
  context.vars['has_state_object'] = so != '';
  context.vars['is_multiple'] = isMultiple;

  // Log the configurations for debugging
  context.logger
      .info('State Object Type: ${context.vars['state_object_type']}');
  context.logger.info('Has State Object: ${context.vars['has_state_object']}');
  context.logger.info('Is Multiple: ${context.vars['is_multiple']}');
}
