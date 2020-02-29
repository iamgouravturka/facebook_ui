import 'package:flutter/material.dart';

class FacebookMain extends StatefulWidget {
  @override
  _FacebookMainState createState() => _FacebookMainState();
}

class _FacebookMainState extends State<FacebookMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // * ---------------------------------Search Box Container--------------------------------
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),

                    // * ------------------------Search Text Field------------------------------
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),

                // * ---------------------------------Camera Icon-----------------------------------
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[800],
                  size: 30,
                )
              ],
            ),
          ),

          // * ---------------------------------Main Content----------------------------------------
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // * -----------------------Stories and archive text ---------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        // * ------------------Stories Text-----------------------------------------
                        Text(
                          "Stories",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2),
                        ),

                        // * ------------------Archive Text-----------------------------------------
                        Text("See Archive"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          //* -----------------------Stories---------------------------------------
                          makeStory(
                              storyImage: 'assets/images/story/story-1.jpg',
                              userImage: 'assets/images/aatik-tasneem.jpg',
                              userName: 'Aatik Tasneem'),
                          makeStory(
                              storyImage: 'assets/images/story/story-3.jpg',
                              userImage: 'assets/images/aiony-haust.jpg',
                              userName: 'Aiony Haust'),
                          makeStory(
                              storyImage: 'assets/images/story/story-4.jpg',
                              userImage: 'assets/images/averie-woodard.jpg',
                              userName: 'Averie Woodard'),
                          makeStory(
                              storyImage: 'assets/images/story/story-5.jpg',
                              userImage: 'assets/images/azamat-zhanisov.jpg',
                              userName: 'Azamat Zhanisov'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    //* -----------------------Feed Info-------------------------------------------
                    makeFeed(
                        userName: 'Aiony Haust',
                        userImage: 'assets/images/aiony-haust.jpg',
                        feedTime: '1 hr ago',
                        feedText:
                            'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                        feedImage: 'assets/images/story/story-2.jpg'),
                    makeFeed(
                        userName: 'Azamat Zhanisov',
                        userImage: 'assets/images/azamat-zhanisov.jpg',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage: ''),
                    makeFeed(
                        userName: 'Azamat Zhanisov',
                        userImage: 'assets/images/azamat-zhanisov.jpg',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage: 'assets/images/averie-woodard.jpg'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // TODO Making Story dynmic
  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          //* ------------------------Story Main Image-------------------------------
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),

                    //* ---------------------------User Image-------------------------
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),

              //* ------------------------User name-----------------------------------
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  // TODO Making Users Feed
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        //*---------------------------------User Image----------------------
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //*---------------------------------User Name--------------------------
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 3,
                      ),

                      //*---------------------------------Feed Time----------------------
                      Text(
                        feedTime,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),

              //*---------------------------------3 dot Button---------------------------
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          //*---------------------------------Feed Main Content-------------------------
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7),
          ),
          SizedBox(
            height: 20,
          ),

          //*---------------------------------Feed Image-------------------pp------------
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(feedImage), fit: BoxFit.cover)),
                )
              : Container(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  //*---------------------------------Like Image----------------------
                  makeLike(),

                  //*---------------------------------Love Image----------------------
                  Transform.translate(offset: Offset(-5, 0), child: makeLove()),
                  SizedBox(
                    width: 5,
                  ),

                  //*---------------------------------Like text----------------------
                  Text(
                    "2.5K",
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),

              //*---------------------------------Comment Text----------------------
              Text(
                "400 Comments",
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //*---------------------------------Like Button----------------------
              makeLikeButton(isActive: true),

              //*---------------------------------Comment Button-------------------
              makeCommentButton(),

              //*---------------------------------Share Button---------------------
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

//TODO LIKE IMAGE WIDGET
  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

//TODO LOVE IMAGE WIDGET
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

//TODO LIKE BUTTON WIDGET
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

//TODO COMMENT BUTTON WIDGET
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

//TODO SHARE BUTTON WIDGET
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
