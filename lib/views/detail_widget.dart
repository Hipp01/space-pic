// ignore_for_file: no_logic_in_create_state

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

import '../models/space_data.dart';

class DetailWidget extends StatefulWidget {
  final SpaceData spaceData;
  const DetailWidget({super.key, required this.spaceData});

  @override
  DetailWidgetState createState() => DetailWidgetState(spaceData: spaceData);
}

class DetailWidgetState extends State<DetailWidget> {
  final SpaceData spaceData;
  DetailWidgetState({required this.spaceData});

  bool translated = false;
  String _explanationTranslated = '';

  _fetchTranslateDescription() async {
    var dateToTranslate = spaceData.date.substring(2, 10).replaceAll('-', '');
    var response = await Dio().get("https://www.cidehom.com/apod.php",
        queryParameters: {"_date": dateToTranslate});

    setState(() {
      _explanationTranslated = response.data.substring(
          response.data.indexOf('<p>') + 3, response.data.indexOf('</p>'));
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchTranslateDescription();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Picture of the ${spaceData.date.substring(8, 10)}-${spaceData.date.substring(5, 7)}-${spaceData.date.substring(0, 4)}"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(spaceData.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(
                height: 20,
              ),
              if (spaceData.media_type == "video" &&
                  spaceData.url.contains("youtube"))
                SizedBox(
                  width: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId:
                            YoutubePlayer.convertUrlToId(spaceData.url)!,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                    ),
                  ),
                )
              else if (spaceData.media_type == "video" &&
                  spaceData.url.contains("vimeo"))
                SizedBox(
                  width: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: VimeoVideoPlayer(
                        vimeoPlayerModel: VimeoPlayerModel(
                      url: spaceData.url,
                      systemUiOverlay: const [
                        SystemUiOverlay.top,
                        SystemUiOverlay.bottom,
                      ],
                    )),
                  ),
                )
              else
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(spaceData.url,
                      width: 500, fit: BoxFit.fill),
                ),
              const SizedBox(
                height: 20,
              ),
              Text(spaceData.date),
              const SizedBox(
                height: 20,
              ),
              const Text("Description : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              if (translated)
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(_explanationTranslated.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20)))
              else
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(spaceData.explanation,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20))),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      translated = !translated;
                    });
                  },
                  icon: const Icon(Icons.translate),
                  label: const Text('Translate')),
              const Padding(padding: EdgeInsets.all(20)),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to the list"),
              ),
            ],
          ),
        ));
  }
}
