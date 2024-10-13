

import 'package:flutter/material.dart';

class TextAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  @override
  Widget build(BuildContext context) {
     return
       AppBar(
         centerTitle: true,
         backgroundColor: Colors.blue,
         title: Text(
           title,
           style: const TextStyle(
               color: Colors.white
           ),
         ) ,
       );
     }

  const TextAppBar(this.title);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


