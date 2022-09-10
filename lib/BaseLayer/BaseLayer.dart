import 'package:flutter/cupertino.dart';

import '../Home/HomeView.dart';

class BaseLayer extends StatefulWidget {
  const BaseLayer({Key? key}) : super(key: key);

  @override
  State<BaseLayer> createState() => _BaseLayerState();
}

class _BaseLayerState extends State<BaseLayer> {
  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
