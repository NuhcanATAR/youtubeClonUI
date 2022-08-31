import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:youtube_clon_app/animation_route_darts/slide_route.dart';
import 'package:youtube_clon_app/books_shelfPg/books_shelf_page.dart';
import 'package:youtube_clon_app/home/video_player_page.dart';

import '../animation_route/slide_route.dart';
import '../user_settingsPg/user_settings_page.dart';

class homePg extends StatefulWidget {
  const homePg({Key? key}) : super(key: key);

  @override
  State<homePg> createState() => _homePgState();
}

class _homePgState extends State<homePg> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Geçersiz URL adresi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/app_logo/unnamed.jpg"),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 23,
              height: 23,
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.cast,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                SlideTopRoute(
                  page: userSettingsPg(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10, top: 10, right: 15),
              child: ClipOval(
                child: Container(
                  width: 35,
                  height: 35,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                    fit: BoxFit.cover,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.grey.withOpacity(0.3),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // top video category list content
                      Container(
                        width: double.infinity,
                        height: 42,
                        padding: EdgeInsets.only(left: 7, right: 3),
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.explore,
                                      color: Colors.black,
                                      size: 19,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Keşfet",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Tümü",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Mix'ler",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Müzik",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Canlı",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Oyun",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Aksiyon-macera oyunları",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Animasyon",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Rap yapma",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Yemek pişirme",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Son yüklenenler",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "İzlenenler",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Yeni öneriler",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "GERİ BİLDİRİM GÖNDER",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // advertisement box content
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: <Widget>[
                            // top
                            Container(
                              width: double.infinity,
                              height: 190,
                              color: Colors.red,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://i01.sozcucdn.com/wp-content/uploads/2021/10/28/ys-adv-776x437-1.jpg",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 15,
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      color: Colors.black,
                                      child: Text(
                                        " 0:10 ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // body
                            Container(
                              width: double.infinity,
                              child: ListTile(
                                leading: ClipOval(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://cdn.webrazzi.com/uploads/2021/09/yemeksepeti-412.png",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                title: Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 8),
                                  child: Text(
                                    "Yemeksepeti",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                subtitle: Container(
                                  width: 120,
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Keşfet",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              color: Colors.orangeAccent,
                                              padding: EdgeInsets.all(1),
                                              child: Text(
                                                "Reklam",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Yemeksepeti",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/app_icons/icons8-menu-vertical-60.png"),
                                  ),
                                ),
                              ),
                            ),
                            // footer
                            GestureDetector(
                              onTap: () {
                                _launchURL("www.yemeksepeti.com");
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "KEŞFET",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.link,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      // video box
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 20),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            // top
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  SlideTopRoute(
                                    page: videoPlayerPg(),
                                  ),
                                );
                              },
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
                                            "https://i.ytimg.com/vi/1fueZCTYkpA/maxresdefault.jpg",
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
                                          " 1:04:28 ",
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
                                          "https://tm.ibxk.com.br/2022/07/13/13093332602086.jpg",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                title: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      SlideTopRoute(
                                        page: videoPlayerPg(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Morning Coffee ☕️ [lofi hip hop/study beats]",
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
                                      "Lofi Girl  . ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      " 2,92 Mn görüntüleme .",
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  SlideTopRoute(
                                    page: videoPlayerPg(),
                                  ),
                                );
                              },
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
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      SlideTopRoute(
                                        page: videoPlayerPg(),
                                      ),
                                    );
                                  },
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
                        height: 8,
                      ),
                      // chanell story box list content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 8, bottom: 8, left: 15),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Hikayeler",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 210,
                              margin: EdgeInsets.only(top: 10),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    width: 140,
                                    height: 210,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          left: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 140,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(6),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/story_img/artworks-TR0fxFiQiofw6SiR-qwFKAg-t500x500.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 8,
                                          top: 10,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Image.asset(
                                                "assets/images/app_icons/icons8-menu-vertical-white.png"),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: <Widget>[
                                                ClipOval(
                                                  child: Container(
                                                    width: 54,
                                                    height: 54,
                                                    color: Colors.red,
                                                    alignment: Alignment.center,
                                                    child: ClipOval(
                                                      child: Container(
                                                        width: 51,
                                                        height: 51,
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://ichef.bbci.co.uk/news/640/cpsprodpb/1317F/production/_125870287_8bb3c7d1-9b75-402e-abb0-812090677ead.jpg",
                                                          fit: BoxFit.cover,
                                                          placeholder: (context,
                                                                  url) =>
                                                              CircularProgressIndicator(),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Lofi Girl",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 140,
                                    height: 210,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          left: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 140,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(6),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/story_img/HD-wallpaper-red-bull-racing-car-f1-formula-formula-one-formula1-formule-max-verstappen-rb16-speed-sport.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 8,
                                          top: 10,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Image.asset(
                                                "assets/images/app_icons/icons8-menu-vertical-white.png"),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: <Widget>[
                                                ClipOval(
                                                  child: Container(
                                                    width: 54,
                                                    height: 54,
                                                    color: Colors.red,
                                                    alignment: Alignment.center,
                                                    child: ClipOval(
                                                      child: Container(
                                                        width: 51,
                                                        height: 51,
                                                        color: Colors.white,
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/F1_logo.svg/1280px-F1_logo.svg.png",
                                                          fit: BoxFit.cover,
                                                          placeholder: (context,
                                                                  url) =>
                                                              CircularProgressIndicator(),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Formula Racing",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 140,
                                    height: 210,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          left: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 140,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(6),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/story_img/HD-wallpaper-sunset-doga-huzur-mazara.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 8,
                                          top: 10,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Image.asset(
                                                "assets/images/app_icons/icons8-menu-vertical-white.png"),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: <Widget>[
                                                ClipOval(
                                                  child: Container(
                                                    width: 54,
                                                    height: 54,
                                                    color: Colors.red,
                                                    alignment: Alignment.center,
                                                    child: ClipOval(
                                                      child: Container(
                                                        width: 51,
                                                        height: 51,
                                                        color: Colors.white,
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://fosforludusunceler.com/wp-content/uploads/2020/03/Duvar-Kağıdı-–-wallpaper-711-576x1024.jpg",
                                                          fit: BoxFit.cover,
                                                          placeholder: (context,
                                                                  url) =>
                                                              CircularProgressIndicator(),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Doğa Kampcısı",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 8, bottom: 8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Anasayfa",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.explore_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Shorts",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: Container(
                              width: double.infinity,
                              height: 240,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Oluştur",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close,
                                              color: Colors.black, size: 25),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.explore_outlined,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Kısa video oluştur",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.upload_outlined,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Video yükle",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.live_tv,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Canlı yayın başlat",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(125)),
                          border: Border.all(color: Colors.black, width: 0.8),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.subscriptions_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Abonelikler",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => booksShelfPg(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.video_library_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Kitaplık",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
