
import 'package:oblyk/entities/Crag/crag.dart';


String getMarkerImgPath(Crag crag){
  StringBuffer path = StringBuffer('assets/img/marker-');
  path.write(crag.type_voie.toString());
  path.write(crag.type_grande_voie.toString());
  path.write(crag.type_bloc.toString());
  path.write(crag.type_deep_water.toString());
  path.write(crag.type_via_ferrata.toString());
  path.write('.png');
  return path.toString();
;}