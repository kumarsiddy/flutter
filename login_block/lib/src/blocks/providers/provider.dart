import 'package:flutter/cupertino.dart';
import 'package:loginblock/src/blocks/block_scoped.dart';

class Provider extends InheritedWidget {
  final blocScoped = BlocScoped();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static BlocScoped of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider)
        .blocScoped;
  }
}
