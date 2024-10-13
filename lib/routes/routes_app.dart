

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_routes_bloc/logic/blocs/home_cubit.dart';
import 'package:flutter_routes_bloc/presentation/screens/commonscreens/error_screen.dart';
import 'package:flutter_routes_bloc/presentation/screens/home_screen.dart';
import 'package:flutter_routes_bloc/presentation/screens/list_screen.dart';

import '../logic/blocs/list_cubit.dart';

//string defined routes names
const String routeHome="home";
const String routeList="list";


class AppRoutes{

   Route generatedRoutes(RouteSettings settings){

    switch(settings.name){

      case routeHome:return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => HomeCubit(),
        child: const HomeScreen(),
        ),
      );
      case routeList:return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ListCubit(),
          child: const ListScreen(),
        ),
      );
      default:
        return MaterialPageRoute(builder: (context) => const ErrorScreen());

    }
  }


}