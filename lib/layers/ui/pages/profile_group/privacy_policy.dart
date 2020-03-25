import 'package:flutter/material.dart';
import 'package:rp_mobile/utils/constants.dart';

class PrivacyPolicy extends StatelessWidget {
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
                'Политика конфиденциальности',
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
                return Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    privacyPolicy[index],
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                );
              },
              childCount: privacyPolicy.length,
            ),
          ),
        ],
      ),
    );
  }
}
