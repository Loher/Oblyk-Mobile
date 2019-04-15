import 'package:flutter/material.dart';
import 'package:oblyk/entities/Crag/crag.dart';

class CragPhotoWidget extends StatelessWidget {

  Crag crag;
  BuildContext currentContext;

  CragPhotoWidget(this.crag);


  @override
  Widget build(BuildContext context) {
    this.currentContext = context;
    return Text('TODO : photos');
  }


}