import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/space_data.dart';
import '../utils/utils.dart';

class DetailWidget extends StatelessWidget {
  final SpaceData spaceData;
  const DetailWidget({super.key, required this.spaceData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.spaceData.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(this.spaceData.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(this.spaceData.url,
                    width: 300, fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(this.spaceData.date),
              const SizedBox(
                height: 20,
              ),
              Text("Description : ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(this.spaceData.explanation)),
            ],
          ),
        ));
  }
}
