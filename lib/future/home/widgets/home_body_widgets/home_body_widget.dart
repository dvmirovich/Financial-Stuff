import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeBodyWidget extends StatelessWidget {

  HomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff00D09E),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 38,
                vertical: 28
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добро пожаловать.',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
                Text(
                    'Добрый день!'
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 32
                  ),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/arrow_in_cube_up_icon.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                    ' Текущий баланс',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '37,000 сом',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 42,
                            width: 1,
                            color: Colors.white,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/arrow_in_cube_down_icon.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                    ' Все расходы',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '-14,320 сом',
                                style: TextStyle(
                                    color: Color(0xff0068FF),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Stack(
                        children: [
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(3.14159),
                            child: LinearPercentIndicator(
                              lineHeight: 30,
                              progressColor: Color(0xffF1FFF3),
                              barRadius: Radius.circular(20),
                              backgroundColor: Color(0xff052224),
                              percent: 1 - 0.3,
                              alignment: MainAxisAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    '30%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15
                                    )
                                ),
                                Text(
                                  '14,124 сом',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/done_in_cube_icon.svg',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: Text(
                                '30% от ваших расходов, выглядит неплохо.',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                ),
                              )
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 37,
                  vertical: 33
              ),
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight:  Radius.circular(55),
                )
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff00D09E),
                      borderRadius: BorderRadius.circular(31)
                    ),
                    padding: EdgeInsets.all(22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child:CircularPercentIndicator(
                                radius: 40,
                                backgroundColor: Colors.white,
                                percent: 0.5,
                                lineWidth: 3,
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.blue,
                                center: SvgPicture.asset(
                                  'assets/icons/car_icon.svg'
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Пройденный путь\nк цели',
                              style: TextStyle(
                                fontWeight: FontWeight.w600
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                          height: 130,
                          width: 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/money_icon.svg'
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text('З/п в прошл. мес.'),
                                        Text(
                                          '36,000 сом',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.white,
                                  thickness: 3,
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 7,
                                    ),
                                    SvgPicture.asset(
                                        'assets/icons/fork_and_knife_icon.svg'
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text('Траты на еду'),
                                        Text(
                                          '-10,000 сом',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.blue
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
