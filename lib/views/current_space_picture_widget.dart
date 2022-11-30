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
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Utils.associaiteImage(this._spaceData.explanation),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(this._spaceData.date),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailWidget(spaceData: this._spaceData)));
      },
    );

    ;
  }
}
