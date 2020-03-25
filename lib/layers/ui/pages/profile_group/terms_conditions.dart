import 'package:flutter/material.dart';
import 'package:rp_mobile/utils/constants.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 10.0, top: 40),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                left: 15,
                top: 15.0,
              ),
              child: Text(
                'Лицензионное соглашение',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SingleTerm(
                  termsTitle: termsConditions[index]['terms_title'],
                  termsPoints: termsConditions[index]['terms_points'],
                );
              },
              childCount: termsConditions.length,
            ),
          ),
        ],
      ),
    );
  }
}

class SingleTerm extends StatelessWidget {
  final String termsTitle;
  final String termsPoints;

  SingleTerm({this.termsTitle, this.termsPoints});

  @override
  Widget build(BuildContext context) {
    if (termsTitle.isEmpty) {
      return Container(
        margin: EdgeInsets.all(15.0),
        child: Text(
          termsPoints,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.only(top: 20.0, left: 12.0),
        child: Text(
          termsTitle,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
