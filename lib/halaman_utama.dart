import 'package:flutter/material.dart';
import 'package:responsi_124190031_muhammadrizkyalfiannoor/main.dart';
import 'package:responsi_124190031_muhammadrizkyalfiannoor/halaman_detail.dart';
import 'dart:convert';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryDataList;
    var categoryData;
    return Scaffold(
        appBar: AppBar(
          title: Text("Meal Categories",
          style: TextStyle(
          color: Colors.white,

          )
          ,),
          backgroundColor: Colors.brown
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                childAspectRatio: 3/2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: listcategory.length,
            itemBuilder: (context, index) {
              final categories category = listcategory[index];
              return InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return HalamanDetail(category: category);
                  }));
                },
                child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.network(category.image, fit: BoxFit.fitHeight,),
                        ),
                        SizedBox(width: 30,),
                        Text(category.name)
                      ],
                    )
                ),
              );
            }
        )
    );
  }
}
