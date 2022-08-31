import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:youtube_clon_app/animation_route/slide_route.dart';
import 'package:youtube_clon_app/home/home_page.dart';
import 'package:youtube_clon_app/user_settingsPg/user_settings_page.dart';

class booksShelfPg extends StatefulWidget {
  const booksShelfPg({Key? key}) : super(key: key);

  @override
  State<booksShelfPg> createState() => _booksShelfPgState();
}

class _booksShelfPgState extends State<booksShelfPg> {
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
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // top content
                      Container(
                        width: double.infinity,
                        height: 220,
                        padding: EdgeInsets.only(left: 15, bottom: 6),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.7),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 40,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 27,
                                    height: 27,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://img.icons8.com/ios/50/000000/time-machine.png",
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Geçmiş",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "TÜMÜNÜ GÖRÜNTÜLE",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 155,
                              margin: EdgeInsets.only(top: 8),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    width: 160,
                                    height: 150,
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        // top
                                        Container(
                                          width: double.infinity,
                                          height: 85,
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 85,
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        "https://i.ytimg.com/vi/_ITiwPMUzho/maxresdefault.jpg",
                                                    fit: BoxFit.cover,
                                                    placeholder: (context,
                                                            url) =>
                                                        CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Icon(Icons.error),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 5,
                                                right: 8,
                                                child: Container(
                                                  padding: EdgeInsets.all(1),
                                                  color: Colors.black,
                                                  child: Text(
                                                    "1:34:50",
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
                                        // footer
                                        Container(
                                          width: double.infinity,
                                          height: 60,
                                          child: Row(
                                            children: <Widget>[
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 5,
                                                child: Container(
                                                    width: double.infinity,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                      children: <Widget>[
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "3 AM Coding Session - Lofi Hip.. ",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Lofi Ghostie ",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 1,
                                                child: Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.only(
                                                      top: 10, left: 10),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset(
                                                            "assets/images/app_icons/icons8-menu-vertical-60.png")),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    height: 150,
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        // top
                                        Container(
                                          width: double.infinity,
                                          height: 85,
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 85,
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        "https://i.ytimg.com/vi/8nXqcugV2Y4/maxresdefault.jpg",
                                                    fit: BoxFit.cover,
                                                    placeholder: (context,
                                                            url) =>
                                                        CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Icon(Icons.error),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 5,
                                                right: 8,
                                                child: Container(
                                                  padding: EdgeInsets.all(1),
                                                  color: Colors.black,
                                                  child: Text(
                                                    "3:12:37",
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
                                        // footer
                                        Container(
                                          width: double.infinity,
                                          height: 60,
                                          child: Row(
                                            children: <Widget>[
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 5,
                                                child: Container(
                                                    width: double.infinity,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                      children: <Widget>[
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "2 A.M Study Session 📚",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Lofi Girl ",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 1,
                                                child: Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.only(
                                                      top: 10, left: 10),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset(
                                                            "assets/images/app_icons/icons8-menu-vertical-60.png")),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    height: 150,
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        // top
                                        Container(
                                          width: double.infinity,
                                          height: 85,
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 85,
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        "https://i.ytimg.com/vi/SigIbCVMTzU/maxresdefault.jpg",
                                                    fit: BoxFit.cover,
                                                    placeholder: (context,
                                                            url) =>
                                                        CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Icon(Icons.error),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 5,
                                                right: 8,
                                                child: Container(
                                                  padding: EdgeInsets.all(1),
                                                  color: Colors.black,
                                                  child: Text(
                                                    "1:02:00",
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
                                        // footer
                                        Container(
                                          width: double.infinity,
                                          height: 60,
                                          child: Row(
                                            children: <Widget>[
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 5,
                                                child: Container(
                                                    width: double.infinity,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                      children: <Widget>[
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "code-fi / lofi beats to code",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "The AMP Channel ",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 1,
                                                child: Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.only(
                                                      top: 10, left: 10),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset(
                                                            "assets/images/app_icons/icons8-menu-vertical-60.png")),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // body content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.7),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 30,
                                      height: 30,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://img.icons8.com/ios/50/000000/laptop-play-video--v1.png",
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Videolarınız",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
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
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 30,
                                      height: 30,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://img.icons8.com/ios/50/000000/movie--v1.png",
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Filmleriniz",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // footer content
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Oynatma listeleri",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Yakında Eklenenler",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.blue,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Yeni oynatma listesi",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    alignment: Alignment.center,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://img.icons8.com/ios/50/000000/clock--v1.png",
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(top: 7),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "Daha sonra izle",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "İzlenmemiş 86 video",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    alignment: Alignment.center,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://img.icons8.com/ios/50/000000/facebook-like--v1.png",
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(top: 7),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "Beğendiğim videolar",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "4.178 video",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 40,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://i.ytimg.com/vi/f02mOEt11OQ/maxresdefault.jpg",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(top: 7),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "Lofi Hip Hop Music",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "15 video",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 40,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://i.ytimg.com/vi/5qm8PH4xAss/maxresdefault.jpg",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(top: 7),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "Yabancı Şarkılar",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Text(
                                              "1.237 video",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 240,
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homePg()),
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
                              Icons.home_outlined,
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
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.video_library,
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
