import 'package:flutter/material.dart';

class ItemVideoWidget extends StatelessWidget {
  const ItemVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/1097768/pexels-photo-1097768.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                width: double.infinity,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
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
              "Lorem ipsun dolors sit amet ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
            subtitle: Text(
              "alanxelmundo · 7.6 M de vistas · hace 3 años",
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
    );
  }
}
