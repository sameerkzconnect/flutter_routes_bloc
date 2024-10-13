
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_routes_bloc/logic/blocs/home_cubit.dart';
import '../../routes/routes_app.dart';
import '../widgets/app_bar.dart';
import '../widgets/info_text.dart';
import '../widgets/scaffold_app.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  //function to navigate in next screen
  void navigateToListScreen(context){
      Navigator.pushNamed(context, routeList);
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:  Scaffold(
        appBar:TextAppBar(AppLocalizations.of(context)!.titleHomeScreen),
       body: Container(
         padding: const EdgeInsets.all(16),
         color: Colors.white,
         child: Center(
              child: Column(
              children: [
                InfoText(infoText: AppLocalizations.of(context)!.infoHome,),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                    navigateToListScreen(context);
                }, child: Text(AppLocalizations.of(context)!.buttonGotoListScreen))
            ],
          ),
          ),
       ),
        )
    );
  }
}
