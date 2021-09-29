import 'package:flutter/material.dart';

class ReactionButtonPage extends StatefulWidget {
  const ReactionButtonPage({Key? key}) : super(key: key);

  @override
  _ReactionButtonPageState createState() => _ReactionButtonPageState();
}

class _ReactionButtonPageState extends State<ReactionButtonPage> {


  Widget customCard(String imageLink) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color(0xff2F3C7E),
      elevation: 20.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      borderOnForeground: true,
      shadowColor: Color(0xff98a0e7),
      child: Column(
        children: [
          Image.network(imageLink),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.white),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Like",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    showDialogbox(context);
                  },
                ),
                Row(
                  children: [
                    Icon(Icons.comment, color: Colors.white),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "comment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "share",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff868ba7),
      appBar: AppBar(
        backgroundColor: Color(0xff2F3C7E),
        title: Text('Reaction Button'),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network(
                'https://cdn11.bigcommerce.com/s-ey7tq/images/stencil/1280x1280/products/3303/18825/india-flag__43506.1575353601.jpg?c=2',
                height: 45.0,
                width: 45.0,
              ),
            ),
            onTap: () {
              showDialog(
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 16,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.network(
                              'https://cdn11.bigcommerce.com/s-ey7tq/images/stencil/1280x1280/products/3303/18825/india-flag__43506.1575353601.jpg?c=2',
                              height: 40.0,
                              width: 40.0,
                            ),
                            Image.network(
                                'https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg',
                                height: 40.0,
                                width: 40.0),
                            Image.network(
                                'https://cdn11.bigcommerce.com/s-ey7tq/images/stencil/1280x1280/products/3332/18818/italy-flag__19720.1575335174.jpg?c=2',
                                height: 40.0,
                                width: 40.0),
                            Image.network(
                                'https://www.worldatlas.com/img/flag/ca-flag.jpg',
                                height: 40.0,
                                width: 40.0),
                            Image.network(
                                'https://www.ibu.edu.ba/wp-content/uploads/2021/07/1200px-Flag_of_the_United_Kingdom.svg.png',
                                height: 40.0,
                                width: 40.0),
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          customCard(
            'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg',
          ), customCard(
              'https://c4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-preview.jpg'),
          customCard('https://www.iamabiker.com/wp-content/uploads/2021/01/Honda-Highness-CB350-HD-wallpaper-2.jpg'),
          customCard(
              'https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg'),
        ],
      ),
    );
  }

  Future<dynamic> showDialogbox(BuildContext context) {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 16,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.thumb_up),
            Text(
              '🤩',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '🤣',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '😭',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '😨',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '🤬',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
