import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_pic/models/space_data.dart';
import 'package:space_pic/utils/utils.dart';
import 'package:space_pic/views/space_home.dart';

import 'detail_widget.dart';

class CurrentSpacePictureWidget extends StatelessWidget {
  final SpaceData _spaceData;
  const CurrentSpacePictureWidget({super.key, required SpaceData spaceData})
      : _spaceData = spaceData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          const Text("Picture of the day",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          const Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Utils.associaiteImage(_spaceData.explanation),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Text(_spaceData.date),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailWidget(spaceData: _spaceData)));
      },
    );

    ;
  }
}
