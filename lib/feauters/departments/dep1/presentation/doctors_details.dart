import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reuseable/reuse.dart';
import '../data/data.dart';

class dep1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('تكنولوجيا التعليم'),
        ),
        body:ListView.builder(itemBuilder: (context,index){
          return AwesomeCard2(a: names[index], b: b[index]);
        },
          itemCount: names.length,

        ),

    );
  }
}
