import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoPlayerPg extends StatefulWidget {
  const videoPlayerPg({Key? key}) : super(key: key);

  @override
  State<videoPlayerPg> createState() => _videoPlayerPgState();
}

class _videoPlayerPgState extends State<videoPlayerPg> {
  YoutubePlayerController _videoController = YoutubePlayerController(
    initialVideoId: "1fueZCTYkpA",
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.3),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 250,
                color: Colors.white,
                child: YoutubePlayer(
                  controller: _videoController,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // advertisement banner content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.8),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 43,
                                height: 43,
                                color: Colors.lightBlue,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://pbs.twimg.com/profile_images/1479513977508016131/YsCZbSQg_400x400.jpg",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Trendyol Yemek",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            color: Colors.orangeAccent,
                                            child: Text(
                                              " Reklam ",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  trendyol.com",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                    ),
                                    child: Text(
                                      "KEŞFET",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.keyboard_arrow_down,
                                      color: Colors.grey, size: 23),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // video title,datetime,view content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            // video title
                            Container(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Morning Coffee ☕️ [lofi hip hop/study beats]",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.4,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 25,
                                    height: 24,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.grey,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // video view, datetime
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(
                                top: 8,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "1.3 Mn görüntüleme . 1 ay önce",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // video chanell content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey,
                              width: 0.6,
                            ),
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 0.6,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 45,
                                height: 45,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img-s3.onedio.com/id-5f5619fd5bc36e151cef6aa8/rev-0/w-620/f-jpg/s-26783c87457064b607d91b21bc970fe5c38f0bf0.jpg",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "Lofi Girl",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            "   11,4 Mn abone",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "ABONE OLUNDU",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14.6,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "KATIL",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.6,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.black54,
                                  size: 25,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      // video comments list content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "Yorumlar",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "250 B",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.keyboard_double_arrow_down,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: <Widget>[
                                  ClipOval(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // advertisement body banner content
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(bottom: 10),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            // top
                            Container(
                              width: double.infinity,
                              height: 200,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.orange, width: 0.8),
                              ),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://img.fanatik.com.tr/img/78/740x418/619a7fceae298bfdceb7eeff.jpg",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                            // body
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(15),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        "Satına al",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.open_in_new,
                                      color: Colors.blue,
                                      size: 22,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  top: 5, left: 15, right: 15, bottom: 4),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Trendyol - Online Alışveriş",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 18,
                                    height: 18,
                                    child: Image.asset(
                                        "assets/images/app_icons/icons8-menu-vertical-60.png"),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Trendyol Yemek",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    color: Colors.orange,
                                    child: Text(
                                      " Reklam ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Yüklü",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // suggestes video list content
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 8),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            // top
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 220,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://arabam-blog.mncdn.com/wp-content/uploads/2021/08/Formula-1-Belcika-GP-2.jpg",
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      bottom: 10,
                                      child: Container(
                                        padding: EdgeInsets.all(1),
                                        color: Colors.black,
                                        child: Text(
                                          " 24:37 ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // body
                            Container(
                              width: double.infinity,
                              height: 60,
                              child: ListTile(
                                leading: ClipOval(
                                  child: Container(
                                    width: 37,
                                    height: 37,
                                    color: Colors.white,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/F1_logo.svg/1280px-F1_logo.svg.png",
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                title: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Formula 1'in en iyi yarış anları",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                subtitle: Row(
                                  children: <Widget>[
                                    Text(
                                      "Formula Racing  . ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      " 657 B görüntüleme .",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset(
                                      "assets/images/app_icons/icons8-menu-vertical-60.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 8),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            // top
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 220,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://www.aa.com.tr/uploads/userFiles/a54ea27f-6036-4f79-88c6-6bc9ba19a35d/08_Nisan%2F22_haziran%2F14%2FAA-28147809.jpg",
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      bottom: 10,
                                      child: Container(
                                        padding: EdgeInsets.all(1),
                                        color: Colors.black,
                                        child: Text(
                                          " 01:44:13 ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // body
                            Container(
                              width: double.infinity,
                              height: 60,
                              child: ListTile(
                                leading: ClipOval(
                                  child: Container(
                                    width: 37,
                                    height: 37,
                                    color: Colors.white,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://fosforludusunceler.com/wp-content/uploads/2020/03/Duvar-Kağıdı-–-wallpaper-711-576x1024.jpg",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                title: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Rahatlatıcı Doğa Yürüşü",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                subtitle: Row(
                                  children: <Widget>[
                                    Text(
                                      "Doğa Kampcısı  . ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      " 934 B görüntüleme .",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Container(
                                  width: 18,
                                  height: 18,
                                  child: Image.asset(
                                      "assets/images/app_icons/icons8-menu-vertical-60.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 350,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
