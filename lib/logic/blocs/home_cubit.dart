


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_routes_bloc/logic/states/screen_state.dart';

class HomeCubit extends Cubit<ScreenState>{
  HomeCubit():super(InitialScreenState());

}