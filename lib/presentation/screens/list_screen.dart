import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_routes_bloc/logic/blocs/list_cubit.dart';
import 'package:flutter_routes_bloc/logic/states/screen_state.dart';
import 'package:flutter_routes_bloc/presentation/widgets/info_listview.dart';
import 'package:flutter_routes_bloc/presentation/widgets/info_text.dart';

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
          child: Column(
              children: [
                InfoText(infoText: AppLocalizations.of(context)!.infoList),
                BlocBuilder<ListCubit,ScreenState>(builder: (context, state) {

                  if(state is LoadingScreenState){// in case it is loading state
                    return const SizedBox(height: 20,child:  CircularProgressIndicator());
                  }else if(state is SuccessScreenState){//in case when we get the data from server
                    if (kDebugMode) {
                      print("success");
                    }
                    return   Expanded(child:  InfoListView(list: state.intoModelList));
                  }else{ // all other cases like exceptions and error
                    return  InfoText(infoText: AppLocalizations.of(context)!.infoListEmpty);
                  }
                },)
              ]
          ),
        ),
      ),
    );
  }
}
