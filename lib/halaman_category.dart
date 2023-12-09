import 'package:flutter/material.dart';
import 'package:responsi_124190031_muhammadrizkyalfiannoor/main.dart';
import 'package:responsi_124190031_muhammadrizkyalfiannoor/halaman_utama.dart';
import 'package:responsi_124190031_muhammadrizkyalfiannoor/halaman_detail.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.category});
  final categories category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: Colors.red,

      ),
      body: GridView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width ,
          child: Image.network(category.image, fit: BoxFit.fitHeight,),
        ),
        Center(
          child: Column(
            children: [
              Text(category.name, style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        )
      ],),
    );
  }
}
