import 'package:flutter/material.dart';
import 'package:oblyk/entities/Crag/crag.dart';

class CragSectorWidget extends StatelessWidget {

  Crag crag;
  BuildContext currentContext;

  CragSectorWidget(this.crag);


  @override
  Widget build(BuildContext context) {
    this.currentContext = context;
    return Text('TODO : secteurs');
  }


}