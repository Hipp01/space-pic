import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

import '../models/space_data.dart';

class DetailWidget extends StatelessWidget {
  final SpaceData spaceData;
  const DetailWidget({super.key, required this.spaceData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(spaceData.title),
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
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(spaceData.explanation,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20))),
            ],
          ),
        ));
  }
}
