import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twice_app/core.dart';
import '../widgets/widgets.dart';

class MemberDetail extends StatelessWidget {
  const MemberDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Подробности',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  'Chou Tzuyu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '(кор. 쯔위; яп. ツウィ)',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 17),
              child: Stack(
                children: [
                  Wrap(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              loadImage('tzuyu_big.png'),
                              fit: BoxFit.fill,
                              height: 222,
                            ),
                            Expanded(
                              child: Image.asset(
                                loadImage('tzuyu_1.png'),
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                loadImage('tzuyu_2.png'),
                              ),
                            ),
                          ])
                    ],
                  ),
                  Positioned(
                    right: 0,
                    bottom: 60,
                    child: orangeButton(40, 200, "Факты", null),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: orangeButton(40, 200, "Фотографии", null),
                  ),
                ],
              ),
            ),
            memberDetailTextColumn(),
            titleText('Другие участницы'),
            Expanded(child: membersGrid(context))
          ]),
        ));
  }

  Widget memberDetailTextColumn() {
    return SizedBox(
            height: 300,
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                titleText('Реальное имя'),
                subTitleText('Чжоу Цзыюй (周子瑜, Chou Tzu-yu)'),
                subTitleText('Чо Джухи (조주희, Cho Joo-hee)[1]'),
                titleText('Другие имена'),
                subTitleText('Цзыюй (쯔위, ツウィ, Tzuyu) (TWICE)'),
                subTitleText('Салли (Sally) (англ.)'),
                titleText('Дата рождения'),
                subTitleText('14 июня 1999 (23 года'),
                titleText('Место рождения'),
                subTitleText('Восточный Округ Тайнаня, Тайвань'),
                titleText('Образование'),
                subTitleText('Старшая школа искусств Ханлим'),
                titleText('Карьера'),
                subTitleText('Певица, автор песен'),
                titleText('Характеристики'),
                subTitleText('Рост'),
                subTitleText('172 см'),
                subTitleText('Вес'),
                subTitleText('48 кг'),
              ]),
            ),
          );
  }  
}
