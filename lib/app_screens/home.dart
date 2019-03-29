import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 16, top: 30, right: 16),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Fly Emirates",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From UK to Cape Town",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Etihad",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From UK to Johannesburg",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                  ],
                ),
                FlightImageAsset(),
                FlightBookingButton()
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/flights.png");
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: 250,
      height: 50,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book Flight",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20,
                fontWeight: FontWeight.w400,
                /*color: Colors.deepPurple*/),
          ),
          elevation: 6,
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext buildContext) {
    var alertDialog = AlertDialog(
      title: Text("Flight booked successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: buildContext, builder: (BuildContext context) => alertDialog);
  }
}
