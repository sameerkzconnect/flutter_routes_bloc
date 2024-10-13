


import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/info_text.dart';
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:  Scaffold(
          appBar:TextAppBar(AppLocalizations.of(context)!.titleErrorScreen),
          body: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Center(
              child: InfoText(infoText: AppLocalizations.of(context)!.infoError,),
            ),
          ),
        )
    );
  }
}
