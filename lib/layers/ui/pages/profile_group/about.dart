import 'package:flutter/material.dart';
import 'package:rp_mobile/layers/ui/pages/profile_group/privacy_policy.dart';
import 'package:rp_mobile/layers/ui/pages/profile_group/support.dart';
import 'package:rp_mobile/layers/ui/pages/profile_group/terms_conditions.dart';
import 'package:rp_mobile/layers/ui/themes.dart';
import 'package:rp_mobile/layers/ui/widgets/base/app_scaffold.dart';
import 'package:rp_mobile/layers/ui/widgets/temp_widgets/app_bar.dart';
import 'package:rp_mobile/utils/constants.dart';

class AboutPage extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => AboutPage());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: AppThemes.materialAppTheme(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TempAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      child: Image.asset('images/logo1.jpeg'),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Планирование путешествий',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'Версия: 1.0 от 1 марта 2020',
                              style: TextStyle(color: Colors.black26),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    aboutUs,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TermsConditions(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Договор оферты',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black26)
                      ],
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicy(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Политика конфиденциальности',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black26)
                      ],
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Support(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Оценить приложение',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '© 2020 Проект Правительства',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'Москвы',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
