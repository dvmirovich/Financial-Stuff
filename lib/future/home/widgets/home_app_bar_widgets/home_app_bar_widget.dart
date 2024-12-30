import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;


  HomeAppBarWidget({Key? key})
      :preferredSize = const Size.fromHeight(50.0),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.monetization_on, size: 30,),
      title: const Text('Financial Stuff'),
      backgroundColor: Colors.green.shade700,
    );
  }
}