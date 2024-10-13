


import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes_bloc/data/info_model.dart';
import 'package:flutter_routes_bloc/presentation/widgets/app_bar.dart';
import 'package:flutter_routes_bloc/presentation/widgets/info_text.dart';
 

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({required this.infoModel,super.key});
  final InfoModel infoModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
     appBar: TextAppBar(AppLocalizations.of(context)!.titleListDetailScreen),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoText(infoText:AppLocalizations.of(context)!.infoListDetails),
            const SizedBox(height: 10,),
            Text("Title:${infoModel.title}",textAlign: TextAlign.start ,style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight:  FontWeight.bold
            )
            ),
            const SizedBox(height: 5,),
            Text("Message ${infoModel.message}",
              textAlign: TextAlign.start ,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight:  FontWeight.normal,
                  fontSize: 16
              ),)
          ],
        ),
      ),
    )
    );
  }
}
