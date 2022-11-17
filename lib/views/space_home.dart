import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:space_pic/models/space_data.dart';

class SpaceHome extends StatefulWidget {
  const SpaceHome({super.key, required String title});

  @override
  State<SpaceHome> createState() => _SpaceHomeState();
}

class _SpaceHomeState extends State<SpaceHome> {
  SpaceData? _spaceData;
  DateTime? _refreshdate;

  _fetchSpaceData() async {
    var response = await Dio().get(
      "https://api.nasa.gov/planetary/apod",
      queryParameters: {
        "api_key": "ZpfzqeRQJSvEIA1eNXY8rqhshFD0l1qFzQkesqaU",
        "start_date": "2022-11-02",
        // _refreshdate
        //         ?.subtract(Duration(days: 7))
        //         .toString()
        //         .substring(0, 10) ??
        //     DateTime.now()
        //         .subtract(Duration(days: 7))
        //         .toString()
        //         .substring(0, 10),
        // "end_date": _refreshdate?.toString().substring(0, 10) ??
        //     DateTime.now().toString().substring(0, 10),
        "end_date": "2022-11-02",
      },
    );

    setState(() {
      _refreshdate = DateTime.now();
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _spaceData!.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (_spaceData!.media_type == "image")
              Image.network(_spaceData!.url)
            else
              Text("This is a video"),
            // Image.network(_spaceData!.url),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _spaceData!.explanation,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _spaceData!.date,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
