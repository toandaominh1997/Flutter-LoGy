import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  final String toolbarname;

  Setting({Key key, this.toolbarname}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SettingState(toolbarname);
}

class SettingState extends State<Setting> {
  List list = ['12', '11'];

  bool switchValue = false;

  // String toolbarname = 'Fruiys & Vegetables';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String toolbarname;

  SettingState(this.toolbarname);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Setting'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
            height: 50,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 7.0),
            child: new Row(
              children: <Widget>[
                _verticalD(),
                new GestureDetector(
                  onTap: (){},
                  child: new Text('Notification', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),),
                )
              ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0, right: 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.notifications, color: Colors.black54,),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                          ),
                          Text(
                            'Notification',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                      Switch(
                          value: switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              switchValue = value;
                            });
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
            ),
            new Container(
              height: 50.0,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 7.0),
              child: new Row(
                children: <Widget>[
                  _verticalD(),
                  new GestureDetector(
                    onTap: () {
                      /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signup_screen()));*/
                    },
                    child: new Text(
                      'Version',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Card(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Container(margin: EdgeInsets.only(left: 5.0),),
                              Text(
                                'version',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black87,
                                ),
                                  textAlign: TextAlign.left
                              ),
                              Text(
                                '     1.0',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  _verticalD() => Container(
    margin: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
  );
}