import 'package:flutter/material.dart';

class TextModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'For more information visit ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 19.5,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            children: <Widget>[
              Text(
                "https://ncdc.gov.ng/ncdc",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          new Text(
                            "To contact the Covid-19 services call: ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "0800 970000 10",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    new Column(
                      children: <Widget>[
                        Center(
                            child: Text(
                          'To learn more about the creator,',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                        SizedBox(height: 5),
                        Text(
                          'you can contact him with the emails below',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 15),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/images/dave.JPG'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "osunkoyatim@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "davekoya135@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
