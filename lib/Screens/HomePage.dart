import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';
import '../model/packages.dart';
import 'package:flutter/cupertino.dart';
import './packagescreen.dart';
import './PackageDetails.dart';
import 'Date.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentTab = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    tabController = TabController(vsync: this, length: 4);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      // Here i implemented the drawer
      drawer: new PageView(
        physics: new NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            //  color: Color.fromARGB(255, 247, 247, 247),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    heightFactor: 1.49,
                    child: Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.green[500],
                                    Colors.green[400]
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(37),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.green[400],
                                      offset: Offset(0, 1),
                                      blurRadius: 4)
                                ]),
                            child: Padding(
                                padding: EdgeInsets.all(2),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/logo1.png'),
                                          fit: BoxFit.cover),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(33)),
                                ))),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Abdelhadi Bouali',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green[400],
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        SizedBox(
                          height: 2,
                        ),
                        Text('ha_bouali@esi.dz',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Montserrat',
                                fontSize: 13)),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          highlightColor: ThemeColors.WhiteGrey,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.pages,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Packages",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 35),
                        FlatButton(
                          highlightColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.comment,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Feedback",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 35),
                        FlatButton(
                          highlightColor: ThemeColors.WhiteGrey,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Setting',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  /// here is the logout button

                  Container(
                    margin: EdgeInsets.only(top: 150),
                    child: FlatButton(
                      highlightColor: Color.fromARGB(255, 247, 247, 247),
                      splashColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.signOutAlt,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Sign out',
                            style: TextStyle(fontSize: 15),
                          ),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 190),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.home),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // End of DRAWER

      // Bottom App bar

      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        inactiveColor: Colors.grey,
        currentIndex: _currentTab,
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        activeColor: Colors.green[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 32.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
              size: 32.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 32.0,
            ),
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {},
              ),
              Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15.0),
                      prefixIcon: Icon(Icons.search, color: Colors.grey)),
                ),
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.green[400]),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) => Date()));
                },
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(' All Trips',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0)),
          ),
          Container(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Recent',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Actuality',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bookmarks',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Most Viewed',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 375.0,
              child: new PackagePage()),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(' Exclusive offers',
                style: TextStyle(fontFamily: 'Quicksand', fontSize: 25.0)),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (int i = 0; i < packages.length; i++)
                  _buildPackageItem(
                      packages[i].imageUrl,
                      packages[i].destination,
                      packages[i].prix,
                      packages[i].description)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPackageItem(
      String imageUrl, String destination, String prix, String description) {
    return Container(
      child: Row(
        children: <Widget>[
          InkWell(
            child: new Container(
              margin: EdgeInsets.only(left: 10),
              height: 265.00,
              width: 224.00,
              child: Text(destination,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl)),
                borderRadius: BorderRadius.circular(8.00),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => PackageDetails(
                      imageUrl, destination, prix, description)));
            },
          ),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
