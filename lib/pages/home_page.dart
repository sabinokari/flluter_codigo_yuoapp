import 'package:flluter_codigo_yuoapp/models/video_model.dart';
import 'package:flluter_codigo_yuoapp/services/api_service.dart';
import 'package:flluter_codigo_yuoapp/ui/general/colors.dart';
import 'package:flluter_codigo_yuoapp/ui/widgets/item_filter_widget.dart';
import 'package:flluter_codigo_yuoapp/ui/widgets/item_video_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final APIService _apiService = APIService();
  List<VideoModel> Videos = [];

  @override
  initState() {
    super.initState();
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      Videos = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    //_apiService.getVideos();

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                    ),
                    icon: const Icon(
                      Icons.explore_outlined,
                    ),
                    label: const Text(
                      "Explorer",
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                    child: VerticalDivider(
                      color: Colors.white30,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Musica",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Programacion",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: Videos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemVideoWidget(
                    videoModel: Videos[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
