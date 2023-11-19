import 'package:flluter_codigo_yuoapp/models/video_model.dart';
import 'package:flluter_codigo_yuoapp/pages/video_detail_page.dart';
import 'package:flutter/material.dart';

class ItemVideoWidget extends StatelessWidget {
  VideoModel videoModel;

  ItemVideoWidget({required this.videoModel});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoDetailPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  videoModel.snippet.thumbnails.high.url,
                  width: double.infinity,
                  height: height * 0.3,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    color: Colors.black.withOpacity(0.7),
                    child: Text(
                      "23.22",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Colors.white12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3379937/pexels-photo-3379937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              title: Text(
                videoModel.snippet.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Text(
                "${videoModel.snippet.channelTitle} · 7.6 M de vistas · hace 3 años",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13.0,
                ),
              ),
              trailing: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 4.0),
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
