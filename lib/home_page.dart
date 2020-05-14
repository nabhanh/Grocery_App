import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:groceryapp/components/reusable_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Grocery App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: 'Pacifico',
          ),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ReusableCard(
                    cardChild: Container(
                      width: 50,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          FittedBox(
                            child: Image.network(
                                'https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=6&m=683494078&s=612x612&w=0&h=aVyDhOiTwUZI0NeF_ysdLZkSvDD4JxaJMdWSx2p3pp4='),
                          ),
                          Text('Item name'),
                        ],
                      ),
                    ),
                    onPress: () {},
                    colour: Colors.greenAccent,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ReusableCard(
                    cardChild: Container(
                      width: 50,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'This is where the image will go',
                          ),
                          Text('Item name'),
                        ],
                      ),
                    ),
                    onPress: () {},
                    colour: Colors.greenAccent,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: ReusableCard(
                  cardChild: Container(
                    width: 50,
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'This is where the image will go',
                        ),
                        Text('Item name'),
                      ],
                    ),
                  ),
                  onPress: () {},
                  colour: Colors.greenAccent,
                ),
              ),
              Container(
                child: ReusableCard(
                  cardChild: Container(
                    width: 50,
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'This is where the image will go',
                        ),
                        Text('Item name'),
                      ],
                    ),
                  ),
                  onPress: () {},
                  colour: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
