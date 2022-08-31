import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class userSettingsPg extends StatefulWidget {
  const userSettingsPg({Key? key}) : super(key: key);

  @override
  State<userSettingsPg> createState() => _userSettingsPgState();
}

class _userSettingsPgState extends State<userSettingsPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 80,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Row(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 43,
                                height: 43,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                "CANSU DEMİR",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.only(left: 85),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Google Hesabınızı yönetin",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/name--v1.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Kanalınız",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/external-anggara-basic-outline-anggara-putra/48/000000/external-incognito-user-interface-basic-anggara-basic-outline-anggara-putra.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Gizli Modu aç",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/pastel-glyph/64/000000/add-male-user.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Hesap ekle",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/youtube-play--v1.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Youtube Premium Üyesi Ol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/cheap-2.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Satın alınanlar ve üyelikler",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/bar-chart--v1.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "İzleme süresi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/settings--v1.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Ayarlar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/ios/50/000000/help.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Yardım ve geri bildirim",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://external-preview.redd.it/6YGot_9h3QZekQBCsvHxkwoeY1q0RBJilFRzZaBoYT8.jpg?auto=webp&s=8851e87c00d61dc0bcdb3ca4fb26b08ccc4cf786",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "YouTube Studio",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/color/48/000000/youtube-music.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "YouTube Music",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 28,
                                height: 28,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://img.icons8.com/doodle/48/000000/youtube-play--v2.png",
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "YouTube Kids",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
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
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.7),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Gizlilik Politikası  . ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "  Hizmet Şartları",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
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
