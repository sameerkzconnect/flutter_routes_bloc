
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/app_bar.dart';
import '../widgets/info_text.dart';
import '../widgets/scaffold_app.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

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

            ],
          ),
          ),
       ),
        )
    );
  }
}
