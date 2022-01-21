import 'package:flutter/material.dart';

class TwitterBody extends StatelessWidget {
  final profileimages = [
    'images/app_logo.png',
    'images/app_logo.png',
    'images/app_logo.png',
    'images/app_logo.png',
    'images/app_logo.png',
    'images/app_logo.png',
  ];
  final names = ['Kaeya', 'Athanasia', 'Penelope', 'Callisto', 'Juvelian', 'Maximillian'];
  final usernames = [
    '@kae',
    '@athy',
    '@pen',
    '@kei',
    '@juve',
    '@max'
  ];
  final dates = [
    '· 3h',
    '· 06/21/21',
    '· 12h',
    '· 10/11/21',
    '· 6h',
    '· 1h'
  ];
  final tweets = [
    'Cool as ice',
    'OTW to Philippines',
    'Good morning',
    "How's everyone?",
    'Feeling good today',
    'Hello how are you?',
  ];
  final replies =[
    '1',
    '15',
    '10',
    '19',
    '69',
    '3'
  ];
  final retweets =[
    '10',
    '1k',
    '1',
    '9',
    '6',
    '30'
  ];
  final likes =[
    '50',
    '10',
    '70',
    '2',
    '5',
    '10'
  ];
  Widget getList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(profileimages[index]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                names[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  usernames[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  dates[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 0.0, bottom: 8.0),
                        child: Text(
                          tweets[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10.0,
                                  width: 18.0,
                                  child: IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    icon: Icon(
                                      Icons.chat_bubble_outline,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10.0,
                                  width: 18.0,
                                  child: IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    icon: Icon(
                                      Icons.replay,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10.0,
                                  width: 18.0,
                                  child: IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    icon: Icon(
                                      Icons.favorite_border,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    // onPressed: () {},

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                              width: 10.0,
                              child: IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: Icon(
                                  Icons.share,
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: double.infinity,
              color: Colors.grey,
              height: 0.5,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getList(),
    );
  }
}