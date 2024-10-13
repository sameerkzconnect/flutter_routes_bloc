

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenScaffold extends StatelessWidget {
  const ScreenScaffold( {super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
            appBar:TextAppBar( title));
  }

}


