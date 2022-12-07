import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

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
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(
                height: 20,
              ),
              if (this.spaceData.media_type == "video" &&
                  this.spaceData.url.contains("youtube"))
                Container(
                  width: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId:
                            YoutubePlayer.convertUrlToId(this.spaceData.url)!,
                        flags: YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                    ),
                  ),
                )
              else if (this.spaceData.media_type == "video" &&
                  this.spaceData.url.contains("vimeo"))
                Container(
                  width: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: VimeoVideoPlayer(
                        vimeoPlayerModel: VimeoPlayerModel(
                      url: this.spaceData.url,
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
                  child: Image.network(this.spaceData.url,
                      width: 500, fit: BoxFit.fill),
                ),
              const SizedBox(
                height: 20,
              ),
              Text(this.spaceData.date),
              const SizedBox(
                height: 20,
              ),
              Text("Description : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(this.spaceData.explanation,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20))),
            ],
          ),
        ));
  }
}
