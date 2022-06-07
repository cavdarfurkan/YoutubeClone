import 'package:flutter/material.dart';
import 'package:youtube_clone/Models/video.dart';


class VideoCard extends StatelessWidget {
  const VideoCard({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(image: video.thumbnail, fit: BoxFit.fill),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 30.0,
                height: 30.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: video.avatar),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '${video.channelName} ∙ ${video.viewCount} views ∙ ${video.uploadDate}',
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.white38 ,fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}