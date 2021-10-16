import 'package:flutter/material.dart';

class AlgebraThree extends StatefulWidget {
  @override
  _AlgebraThreeState createState() => _AlgebraThreeState();
}

class _AlgebraThreeState extends State<AlgebraThree> {
  String value = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Algebra'),
          backgroundColor: Colors.blue[600],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset('assets/pictures/practises/algebra/c.PNG'),
            Text('Wite final answer:'),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (text) {
                value = text;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Answer',
                hintText: 'Enter Answer',
              ),
            ),
            Text(result),
            Row(children: [
              Expanded(
                child: RaisedButton(
                    child: Text('Submit'),
                    color: Colors.blue[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      if (value == "1") {
                        setState(() {
                          result = "Awesome! That is correct";
                        });
                      } else if (value == "") {
                        setState(() {
                          result = "Please type an answer";
                        });
                      } else {
                        setState(() {
                          result = "Oops! That answer is incorrect";
                        });
                      }
                    }),
              ),
            ])
          ],
        )));
  }
}
