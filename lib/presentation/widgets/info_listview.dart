



import 'package:flutter/cupertino.dart';
import 'package:flutter_routes_bloc/data/info_model.dart';

import 'list_items/info_item.dart';

class InfoListView extends StatelessWidget {
  const InfoListView({super.key, required this.list});

  final List<InfoModel> list;

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
        itemCount: list.length,
       itemBuilder: (context, index) {
        return InfoItem(item: list[index],);
       },);
  }
}
