import 'package:flluter_codigo_yuoapp/ui/general/colors.dart';
import 'package:flluter_codigo_yuoapp/ui/widgets/item_video_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  String videoId;
  VideoDetailPage({
    required this.videoId,
  });

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(children: [
        SizedBox(
          height: height * 0.35,
          child: YoutubePlayer(
            controller: _playerController,
            progressColors: ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.red,
              bufferedColor: Colors.white54,
              backgroundColor: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Lorem ipsum dolor sit amet",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.3, color: Colors.white, fontSize: 14.0),
          ),
          subtitle: Text(
            "6.5 M de vistas · hace 2 años",
            style: TextStyle(color: Colors.white54, fontSize: 13.0),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            ItemVideoDetailWidget(),
            ItemVideoDetailWidget(),
            ItemVideoDetailWidget(),
          ],
        ),
      ]),
    );
  }
}
