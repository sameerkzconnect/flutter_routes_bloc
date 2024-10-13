import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/app_bar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:  Scaffold(
          appBar:TextAppBar(AppLocalizations.of(context)!.titleListScreen),
          body: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,

          ),
        )
    );
  }
}
