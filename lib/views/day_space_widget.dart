import 'package:flutter/material.dart';
import 'package:space_pic/utils/utils.dart';
import '../models/space_data.dart';

import 'detail_widget.dart';

class DaySpaceWidget extends StatelessWidget {
  const DaySpaceWidget({Key? key, required this.spaceData}) : super(key: key);

  final SpaceData spaceData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                spaceData.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      Utils.associaiteImage(spaceData.explanation),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                spaceData.date,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailWidget(spaceData: spaceData)));
      },
    );
  }
}
