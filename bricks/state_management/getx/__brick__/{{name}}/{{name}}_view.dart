import 'package:flutter/material.dart';
import 'package:get/get.dart';

part '{{name}}_view_model.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<_{{name.pascalCase()}}ViewModel>(
      init: _{{name.pascalCase()}}ViewModel(),
      builder: (model) => Container()
    );
  }
}