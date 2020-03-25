import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:rp_mobile/layers/ui/widgets/temp_widgets/app_bar.dart';

import '../../colors.dart';
import '../../fonts.dart';

class Support extends StatelessWidget {
  String checkBoxCheckedImage = 'images/checkbox.png';
  String checkBoxUnCheckedImage = 'images/empty_checkbox.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 5.0, top: 40),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Обращение в службу поддержки',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
                left: 10.0,
              ),
              child: Text('Тема сообщения'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'images/expand_less.png',
                        height: 8.0,
                        width: 8.0,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  hintText: 'Общие вопросы',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 10.0),
              child: Text('Описание'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Сообщение',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'images/plus.png',
                        height: 32.0,
                        width: 32.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0,top:15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Добавить файл',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'не больше 5 файлов до 30МБ',
                            style: TextStyle(color: Colors.black26),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 10.0),
              child: Text('Имя'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Как к вам обращаться?',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 10.0),
              child: Text('E-mail'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Введите e-mail',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.darkGray,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        child: Image.asset(checkBoxUnCheckedImage),
                      )),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Указанные мной контактные данные верны. Я понимаю, что в случае ошибки со мной не смогут связаться',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
                left: 10.0,
                right: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        child: Image.asset(checkBoxUnCheckedImage),
                      )),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        bottom: 10.0,
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Я принимаю ',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'соглашение',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 17),
                              ),
                              TextSpan(
                                text:
                                    ' на соглашение обработку персональных данных',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _Button(
                // isEnabled: isCheckBoxEnabled,
                text: 'Отправить',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;

  const _Button(
      {Key key, @required this.text, this.onPressed, this.isEnabled = false})
      : super(key: key);

  @override
  __ButtonState createState() => __ButtonState();
}

class __ButtonState extends State<_Button> {
  bool _isPressed = false;

  buttonStyle(pressed) => TxtStyle()
    ..background.color(widget.isEnabled
        ? AppColors.primaryRed
        : pressed ? AppColors.middleRed : AppColors.primaryRed)
    ..alignmentContent.center()
    ..textColor(Colors.white)
    ..borderRadius(all: 6)
    ..height(50)
    ..fontSize(17)
    ..margin(horizontal: 15, vertical: 8)
    ..fontWeight(NamedFontWeight.semiBold)
    ..ripple(true, splashColor: Colors.white24, highlightColor: Colors.white10)
    // ..boxShadow(
    //     blur: pressed ? 17 : 0,
    //     offset: [0, pressed ? 4 : 0],
    //     color: rgba(247, 70, 78, 0.5))
    ..animate(150, Curves.easeOut);

  GestureClass buttonGestures() => GestureClass()
    ..isTap((isPressed) => setState(() => _isPressed = isPressed))
    ..onTap(widget.onPressed);

  @override
  Widget build(BuildContext context) {
    return Txt(
      widget.text,
      style: buttonStyle(_isPressed),
      gesture: buttonGestures(),
    );
  }
}
