import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:space_pic/models/space_data.dart';
import 'package:sensors_plus/sensors_plus.dart';

import 'current_space_picture_widget.dart';
import 'day_space_widget.dart';

class SpaceHome extends StatefulWidget {
  const SpaceHome({super.key, required String title});

  @override
  State<SpaceHome> createState() => _SpaceHomeState();
}

class _SpaceHomeState extends State<SpaceHome> {
  SpaceData? _spaceData;
  DateTime? _startdate;
  DateTime? _enddate;
  bool _popup = false;

  var _response;

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
      _spaceData = SpaceData.fromJson(response.data[response.data.length - 1]);
      _response = response.data;
    });
  }

  _accelerometre() async {
    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      var x = num.parse(event.x.toStringAsFixed(2));
      var y = num.parse(event.y.toStringAsFixed(2));
      var z = num.parse(event.z.toStringAsFixed(2));
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
          _popup = false;
        },
      );
      if ((x > 8 || x < -8 || y > 8 || y < -8 || z > 8 || z < -8) &&
          _popup == false) {
        _popup = true;
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Photo du jour'),
            content: Image.network(_spaceData!.url),
            actions: [okButton],
          ),
        );
      }
    });
    _popup = false;
  }

  @override
  void initState() {
    super.initState();
    _fetchSpaceData();
    _accelerometre();
  }

  @override
  Widget build(BuildContext context) {
    if (Provider.of<InternetConnectionStatus>(context) ==
        InternetConnectionStatus.disconnected) {
      return Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: const Center(
          child: Text(
            'No Internet Connection!!!',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      );
    }
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrentSpacePictureWidget(
              spaceData: _spaceData!,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: _response.length - 1,
                    itemBuilder: ((context, index) => DaySpaceWidget(
                          spaceData: SpaceData.fromJson(
                              _response[_response.length - index - 2]),
                        )))),
            if (_enddate != null)
              Text(
                  "Données mises à jour le ${DateFormat.yMd().format(_enddate!)} à ${DateFormat.Hms().format(_enddate!)}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple)),
          ],
        ),
      ),
    );
  }
}
