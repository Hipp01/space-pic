import 'package:flutter/material.dart';
import 'package:space_pic/utils/utils.dart';
import '../models/space_data.dart';

class DaySpaceWidget extends StatelessWidget {
  const DaySpaceWidget({Key? key, required this.spaceData}) : super(key: key);

  final SpaceData spaceData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Image.asset(
              Utils.associaiteImage(this.spaceData.explanation),
              fit: BoxFit.cover,
            ),
            Text(spaceData.title),
            Text(spaceData.date),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/space_detail', arguments: spaceData);
      },
    );
  }
}
