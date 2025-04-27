import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reuseable/reuse.dart';
import '../../dep1/data/data.dart';

class dep3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعلام التربوي'),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return AwesomeCard2(a: names[index], b: b[index]);
      },
        itemCount: names.length,

      ),

    );
  }
}
