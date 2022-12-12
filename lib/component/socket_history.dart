import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:onlineoperation/component/order_module.dart';

class SocketHistory extends StatefulWidget {
  final String username;
  final String saleId;
  final String item;
  final String request;
  final String? createAt;
  final String? deliveredAt;

  const SocketHistory(
      {required this.username,
      required this.saleId,
      required this.item,
      required this.request,
      this.createAt,
      this.deliveredAt,
      super.key});

  @override
  State<SocketHistory> createState() => _SocketHistoryState();
}

class _SocketHistoryState extends State<SocketHistory> {
  // int waitingTime = 5;

  // void addWaitingTime() {
  //   setState(() {
  //     if (waitingTime < 59) {
  //       waitingTime = waitingTime + 5;
  //     }
  //   });
  // }

  // void substractWaitingTime() {
  //   setState(() {
  //     if (waitingTime > 9) {
  //       waitingTime = waitingTime - 5;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DottedBorder(
        // dashPattern: [8, 4],
        strokeWidth: 0.5,
        borderType: BorderType.Rect,
        child: ClipRRect(
          child: Container(
            //  POINT: BoxDec
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 5, 20),
              child: Row(children: [
                Text(
                  '${widget.username}',
                  style: textStyle,
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  '${widget.item}',
                  style: textStyle,
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  '${widget.saleId}',
                  style: textStyle,
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  '${widget.createAt}',
                  style: textStyle,
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  '${widget.deliveredAt}',
                  style: textStyle,
                ),
                // GestureDetector(
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: Color(0xFF800000),
                //         shape: BoxShape.circle,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.7),
                //             blurRadius: 5.0,
                //             spreadRadius: 0.0,
                //             offset: const Offset(0, 7),
                //           )
                //         ]),
                //     child: Text(
                //       '조리\n불가',
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Lato'),
                //     ),
                //   ),
                //   onTap: () {},
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // GestureDetector(
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: Color(0xFF008000),
                //         shape: BoxShape.circle,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.7),
                //             blurRadius: 5.0,
                //             spreadRadius: 0.0,
                //             offset: const Offset(0, 7),
                //           )
                //         ]),
                //     child: Text(
                //       '조리중',
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Lato'),
                //     ),
                //   ),
                //   onTap: () {},
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // GestureDetector(
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: Color(0xFF006700),
                //         shape: BoxShape.circle,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.7),
                //             blurRadius: 5.0,
                //             spreadRadius: 0.0,
                //             offset: const Offset(0, 7),
                //           )
                //         ]),
                //     child: Text(
                //       '조리\n완료',
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Lato'),
                //     ),
                //   ),
                //   onTap: () {},
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // GestureDetector(
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: Color(0xFF004d00),
                //         shape: BoxShape.circle,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.7),
                //             blurRadius: 5.0,
                //             spreadRadius: 0.0,
                //             offset: const Offset(0, 7),
                //           )
                //         ]),
                //     child: Text(
                //       '전달\n완료',
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Lato'),
                //     ),
                //   ),
                //   onTap: () {},
                // ),
                // SizedBox(
                //   width: 60,
                // ),
                // GestureDetector(
                //   child: Container(
                //       height: 30,
                //       width: 30,
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //           color: Colors.black,
                //           shape: BoxShape.circle,
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.7),
                //               blurRadius: 5.0,
                //               spreadRadius: 0.0,
                //               offset: const Offset(0, 7),
                //             )
                //           ]),
                //       child: Icon(Icons.remove, color: Colors.white)),
                //   onTap: substractWaitingTime,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // Text('$waitingTime 분'),
                // SizedBox(
                //   width: 10,
                // ),
                // GestureDetector(
                //   child: Container(
                //       height: 30,
                //       width: 30,
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //           color: Colors.black,
                //           shape: BoxShape.circle,
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.7),
                //               blurRadius: 5.0,
                //               spreadRadius: 0.0,
                //               offset: const Offset(0, 7),
                //             )
                //           ]),
                //       child: Icon(Icons.add, color: Colors.white)),
                //   onTap: addWaitingTime,
                // ),
                SizedBox(width: 60),
                Text(
                  '${widget.request}',
                  style: textStyle,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
