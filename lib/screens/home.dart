import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    homeee(),
    Text(
      'Index 1: Coming Soon',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: Downloads',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_for_offline_outlined),
                label: 'Downloads')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ));
  }
}

class homeee extends StatelessWidget {
  const homeee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            "assets/images/money.jpg",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.73,
          ),
        ),
        DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 100,
                  leading: Image.asset(
                    "assets/images/netflix-icon.png",
                    width: 30,
                    height: 30,
                  ),
                  actions: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.search,
                          // color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          print("Pressed");
                        }),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        "assets/images/profilee.jpg",
                        // width: 50,
                        // height: 50,
                      ),
                    ),
                  ],
                  bottom: TabBar(
                    labelPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    indicatorColor: Colors.transparent,
                    indicatorWeight: 0.1,
                    tabs: [
                      Tab(
                        child: Text(
                          "TV Shows",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Movies",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: Container(),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(60, 523, 60, 0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Heist",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Center(
                      child: Text("•",
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey)),
                    ),
                    Text(
                      "Drama",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Center(
                      child: Text("•",
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey)),
                    ),
                    Text(
                      "Thriller",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Center(
                      child: Text("•",
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey)),
                    ),
                    Text(
                      "Crime Film",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 17),
            Container(
              padding: EdgeInsets.fromLTRB(60, 7, 60, 0),
              // child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 27,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "My List",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Play',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "info",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: Text("Popular on Netflix",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(height: 11),
            Container(
              height: 187,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Image(
                    image: AssetImage("assets/images/squid.jpg"),
                  ),
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage("assets/images/ne.jpg"),
                  ),
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage("assets/images/ch.jpg"),
                  ),
                ],
              ),
            )

            // ListView.builder(

            //     scrollDirection: Axis.horizontal,
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //       return Card();
            // })
          ],
        ),
      ],
    );
  }
}
