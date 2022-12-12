import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:onlineoperation/component/socket_order.dart';

class RealtimeOrder extends StatefulWidget {
  final String historyroute;
  final String soldoutroute;
  const RealtimeOrder(
      {required this.historyroute, required this.soldoutroute, super.key});

  @override
  State<RealtimeOrder> createState() => _RealtimeOrderState();
}

class _RealtimeOrderState extends State<RealtimeOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(100, 100, 100, 50),
        child: Container(
            child: Column(children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF023020),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 5.0,
                          spreadRadius: 0.0,
                          offset: const Offset(0, 7),
                        )
                      ]),
                  child: Text(
                    '실시간\n주문',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato'),
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(width: 30),
              GestureDetector(
                child: Container(
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF023020),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 5.0,
                          spreadRadius: 0.0,
                          offset: const Offset(0, 7),
                        )
                      ]),
                  child: Text(
                    '주문\n내역',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato'),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, widget.historyroute);
                },
              ),
              SizedBox(width: 30),
              GestureDetector(
                child: Container(
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF023020),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 5.0,
                          spreadRadius: 0.0,
                          offset: const Offset(0, 7),
                        )
                      ]),
                  child: Text(
                    '품절\n처리',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato'),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, widget.soldoutroute);
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 1200,
              height: 500,
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
                            Text("상품상태",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato')),
                            Text("대기시간",
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
                            return SocketOrder(
                                username: "김순자",
                                saleId: "케일주스 30병 구독",
                                item: "케일주스 2병",
                                request:
                                    "얼음좀 많이 넣어주세요. 초등학생 애도 있으니 종이컵 작은 것도 부탁드릴게요. 휴지도 주시면 좋을거 같습니다.");
                          }))
                ],
              )),
        ])));
  }
}
