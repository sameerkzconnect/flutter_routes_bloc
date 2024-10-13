

import 'package:flutter/material.dart';
import 'package:flutter_routes_bloc/data/info_model.dart';
import 'package:flutter_routes_bloc/routes/routes_app.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key,required this.item});

  final InfoModel item;

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 5,
      color: Colors.white,
      child:GestureDetector(
        onTap: () {
          //arguments are passed using map
          Navigator.pushNamed(context, routeListDetails,arguments: {
            argumentKeyInfoModel: item
          });
        },
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Text(item.title,textAlign: TextAlign.start ,style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                fontWeight:  FontWeight.bold
              )
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(item.message,
                textAlign: TextAlign.start ,
                style: const TextStyle(
                color: Colors.black,
                    fontWeight:  FontWeight.normal,
                fontSize: 16
              ),),
            )
          ]
        ),
      ) ,
    );
  }
}
