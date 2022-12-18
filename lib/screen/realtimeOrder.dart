import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onlineoperation/screen/orderhistory.dart';
import 'package:onlineoperation/screen/realtime.dart';
import 'package:onlineoperation/screen/soldout.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class RealTimeOrder extends StatefulWidget {
  const RealTimeOrder({super.key});

  @override
  State<RealTimeOrder> createState() => _RealTimeOrderState();
}

class _RealTimeOrderState extends State<RealTimeOrder> {
  int waitingTime = 5;

  void addWaitingTime() {
    setState(() {
      if (waitingTime < 59) {
        waitingTime = waitingTime + 5;
      }
    });
  }

  void substractWaitingTime() {
    setState(() {
      if (waitingTime > 9) {
        waitingTime = waitingTime - 5;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // connect();
  }

  // void connect() {
  //   IO.Socket socket = IO.io('https://future-connect.jp.ngrok.io/order',
  //       OptionBuilder().setTransports(['websocket']).build());

  //   socket.onConnect((_) {
  //     socket.emit('msg', 'miguel on the frontend');
  //     print('miguel');
  //   });
  //   socket.on('event', (data) => print(data));
  //   socket.onDisconnect((_) => print('disconnect'));
  //   socket.on('message', (_) => print(_));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFE0E0E0),
          body: Column(children: [
            Container(
              color: Color(0xFF25BD59),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image.asset(
                      'asset/image/livfarm_logo.png',
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        color: Color(0xFF25BD59),
                        child: Center(
                          child: Text(
                            "실시간\n주문",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        color: Color(0xFF25BD59),
                        child: Center(
                          child: Text(
                            "주문\n내역",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        color: Color(0xFF25BD59),
                        child: Center(
                          child: Text(
                            "품절\n처리",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )

                  // Realtime(),
                  // Orderhistory(),
                  // Soldout(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(children: [
                          Text("이름"),
                          Text("상품"),
                          Text("주문시각"),
                          Text("요구사항"),
                        ]),
                        Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.7),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: const Offset(0, 7),
                                        )
                                      ]),
                                  child:
                                      Icon(Icons.remove, color: Colors.white)),
                              onTap: substractWaitingTime,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('$waitingTime 분'),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.7),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: const Offset(0, 7),
                                        )
                                      ]),
                                  child: Icon(Icons.add, color: Colors.white)),
                              onTap: addWaitingTime,
                            ),
                          ],
                        ),
                        Column(
                          children: [],
                        )
                      ],
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
