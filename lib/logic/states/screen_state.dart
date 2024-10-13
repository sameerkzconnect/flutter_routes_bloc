
import 'package:flutter_routes_bloc/data/info_model.dart';

abstract class ScreenState{}

class InitialScreenState extends ScreenState{}

class LoadingScreenState extends ScreenState{}

class SuccessScreenState extends ScreenState{
  final List<InfoModel> intoModelList;
  SuccessScreenState( {required this.intoModelList});// now we required some data
}
