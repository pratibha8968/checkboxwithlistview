import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;




  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<String> _list = [];

  bool? _isFootBallText = false;
  bool? _isCricketText = false;
  bool? _isVolleyBallText = false;
  bool? _isKabaddiText = false;
  bool? _isBaskeballText = false;
  bool? _isBasketBallText = false;
  bool? _isOtherText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("FootBall"),
                    leading: Checkbox(
                      value: _isFootBallText,
                      onChanged: (bool? value) {
                        setState(() {
                          _isFootBallText = value!;
                          String selectVal = "FootBall";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Basketball"),
                    leading: Checkbox(
                      value: _isBaskeballText,
                      onChanged: (bool? value) {
                        setState(() {
                          _isBaskeballText = value!;
                          String selectVal = "Basketball";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Cricket"),
                    leading: Checkbox(
                      value: _isCricketText,
                      onChanged: (value) {
                        setState(() {
                          _isCricketText = value!;
                          String selectVal = "Cricket";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Kabaddi"),
                    leading: Checkbox(
                      value: _isKabaddiText,
                      onChanged: (value) {
                        setState(() {
                          _isKabaddiText = value!;
                          String selectVal = "Kabaddi";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("BasketBall"),
                    leading: Checkbox(
                      value: _isBasketBallText,
                      onChanged: (value) {
                        setState(() {
                          _isBasketBallText = value!;
                          String selectVal = "BasketBall";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("VolleyBall"),
                    leading: Checkbox(
                      value: _isVolleyBallText,
                      onChanged: (value) {
                        setState(() {
                          _isVolleyBallText = value!;
                          String selectVal = "VolleyBall";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Other Games"),
                    leading: Checkbox(
                      value: _isOtherText,
                      onChanged: (value) {
                        setState(() {
                          _isOtherText = value!;
                          String selectVal = "Other Games";
                          value ? _list.add(selectVal) : _list.remove(
                              selectVal);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            Center(
                child: _list.isEmpty
                    ? Text("")
                    : RichText(
                    text: TextSpan(
                        text: "Selected Games:\n",
                        style: DefaultTextStyle
                            .of(context)
                            .style,
                        children: <TextSpan>[
                          TextSpan(
                              text: '${_list.toString()} ',
                              style: TextStyle(fontSize: 16)),
                        ]))),
          ],
        )


    );
  }


}
