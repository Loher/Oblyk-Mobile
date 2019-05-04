import 'package:flutter/material.dart';
import 'package:oblyk/entities/Crag/crag.dart';
import 'package:oblyk/utils/constants.dart';

class CragPhotoWidget extends State<CragPhoto> {

  Crag crag;
  BuildContext currentContext;
  bool fullScreenMode = false;
  String currentImage;

  CragPhotoWidget(this.crag);


  @override
  Widget build(BuildContext context) {
    this.currentContext = context;
    if(fullScreenMode){
      return buildFullScreen(context);
    }
    else{
      return buildGridView(context);
    }
  }

  GridView buildGridView(BuildContext context){
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5.0),
      crossAxisSpacing: 5.0,
      crossAxisCount: 2,
      children: <Widget>[
        createCard('assets/img/mock-img-1.jpg', context),
        createCard('assets/img/mock-img-2.jpg', context),
        createCard('assets/img/mock-img-1.jpg', context),
        createCard('assets/img/mock-img-2.jpg', context),
        createCard('assets/img/mock-img-2.jpg', context),
        createCard('assets/img/mock-img-1.jpg', context),
        createCard('assets/img/mock-img-2.jpg', context),
        createCard('assets/img/mock-img-1.jpg', context),
        createCard('assets/img/mock-img-1.jpg', context),
        createCard('assets/img/mock-img-2.jpg', context),
        createCard('assets/img/mock-img-1.jpg', context),
      ],
    );
  }

  Container buildFullScreen(BuildContext context){
    return new Container(
      child: GestureDetector(
        child: Image.asset(this.currentImage, fit: BoxFit.cover),
        onTap: () {
          this.currentContext = null;
          this.fullScreenMode = false;
          setState(() {
            this.build(context);
          });
        },
      ),
    );
  }

  Container createCard(String path, BuildContext context){
    return new Container(
      padding: EdgeInsets.only(
        bottom: 5
      ),
      child: GestureDetector(
        child: Image.asset(path, fit: BoxFit.cover),
        onTap: () {
          this.currentImage = path;
          this.fullScreenMode = true;
          setState(() {
            this.build(context);
          });
        },
      ),
    );
  }


}

class CragPhoto extends StatefulWidget {

  Crag crag;

  CragPhoto(this.crag);

  @override
  State<StatefulWidget> createState() {
    return CragPhotoWidget(this.crag);
  }
}