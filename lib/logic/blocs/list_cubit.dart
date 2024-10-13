

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_routes_bloc/data/info_model.dart';
import 'package:flutter_routes_bloc/logic/states/screen_state.dart';

class ListCubit extends Cubit<ScreenState>{
  ListCubit():super(InitialScreenState()){
    emit(LoadingScreenState());
    getInfoList();
  }
  void getInfoList() async{
    List<InfoModel> list =[];
    list.add(InfoModel(title: "What is Lorem Ipsum?", message: 'Lorem Ipsum is simply dummy text of the '));
    list.add(InfoModel(title: "What is Lorem Ipsum?", message: 'Lorem Ipsum is simply dummy text of the '));
    list.add(InfoModel(title: "What is Lorem Ipsum?", message: 'Lorem Ipsum is simply dummy text of the '));
    list.add(InfoModel(title: "What is Lorem Ipsum?", message: 'Lorem Ipsum is simply dummy text of the '));
    list.add(InfoModel(title: "What is Lorem Ipsum?", message: 'Lorem Ipsum is simply dummy text of the '));
    await Future.delayed(const Duration(seconds: 2));
    emit(SuccessScreenState(intoModelList: list));
  }
}