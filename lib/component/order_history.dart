import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:onlineoperation/component/socket_history.dart';
import 'package:onlineoperation/component/socket_order.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(100, 100, 100, 50),
        child: Container(
            child: Column(children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 50.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 1200,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                              width: 2.0,
                              color: Color.fromARGB(255, 11, 10, 10)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "이름",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato'),
                            ),
                            Text("상품",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                            Text("구독여부",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                            Text("주문시간",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                            Text("완료시간",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                            Text("요구사항",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                          ],
                        ),
                      )),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return SocketHistory(
                              username: "김순자",
                              saleId: "케일주스 30병 구독",
                              item: "케일주스 2병",
                              request:
                                  "얼음좀 많이 넣어주세요. 초등학생 애도 있으니 종이컵 작은 것도 부탁드릴게요. 휴지도 주시면 좋을거 같습니다.",
                              createAt: '2022-12-13 17:02:33',
                              deliveredAt: '2022-12-13 17:23:44',
                            );
                          }))
                ],
              )),
        ])));
  }
}
