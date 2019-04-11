import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SvgWidget extends State {

  String img;
  double width;
  double height;
  Function callback;


  SvgWidget(this.img, this.width, this.height, this.callback);

  @override
  Widget build(BuildContext context) {
    if(this.callback != null){
      return withCallback();
    }
    return withoutCallback();
  }


  Container withCallback(){
    return new Container(
      child: GestureDetector(
        onTap: (){
          callback();
        },
        child: new SvgPicture.asset(
          this.img,
          width: this.width,
          height: this.height,
        ),
      ),
    );
  }

  Container withoutCallback(){
    return new Container(
      child: GestureDetector(
        child: new SvgPicture.asset(
          this.img,
          width: this.width,
          height: this.height,
        ),
      ),
    );
  }

}



class Svg extends StatefulWidget {

  String img;
  double width;
  double height;
  Function callback;

  Svg(this.img, this.width, this.height, this.callback){
    // Init callback with a do nothing method if null
//    if(this.callback == null){
  //    this.callback = doNothing;
   // }
  }


  @override
  SvgWidget createState() => new SvgWidget(this.img, this.width, this.height, this.callback);
}