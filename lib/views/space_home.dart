import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:space_pic/models/space_data.dart';

import 'current_space_picture_widget.dart';

class SpaceHome extends StatefulWidget {
  const SpaceHome({super.key, required String title});

  @override
  State<SpaceHome> createState() => _SpaceHomeState();
}

class _SpaceHomeState extends State<SpaceHome> {
  SpaceData? _spaceData;
  DateTime? _startdate;
  DateTime? _enddate;

  _fetchSpaceData() async {
    var response = await Dio().get(
      "https://api.nasa.gov/planetary/apod",
      queryParameters: {
        "api_key": "ZpfzqeRQJSvEIA1eNXY8rqhshFD0l1qFzQkesqaU",
        "start_date": _startdate?.toString().substring(0, 10) ??
            DateTime.now()
                .subtract(Duration(days: 7))
                .toString()
                .substring(0, 10),
        "end_date": _enddate?.toString().substring(0, 10) ??
            DateTime.now().toString().substring(0, 10),
      },
    );

    setState(() {
      _startdate = DateTime.now().subtract(Duration(days: 7));
      _enddate = DateTime.now();
      _spaceData = SpaceData.fromJson(response.data[0]);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchSpaceData();
  }

  @override
  Widget build(BuildContext context) {
    if (_spaceData == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Space Pictures"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await _fetchSpaceData();
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Données mises à jour'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrentSpacePictureWidget(spaceData: _spaceData!),
          ],
        ),
      ),
    );
  }
}
