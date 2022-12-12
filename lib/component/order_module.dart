import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderModule extends StatefulWidget {
  const OrderModule({super.key});

  @override
  State<OrderModule> createState() => _OrderModuleState();
}

class _OrderModuleState extends State<OrderModule> {
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
  Widget build(BuildContext context) {
    return Row(children: [
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF800000),
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
            '조리\n불가',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato'),
          ),
        ),
        onTap: () {},
      ),
      SizedBox(
        width: 10,
      ),
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF008000),
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
            '조리중',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato'),
          ),
        ),
        onTap: () {},
      ),
      SizedBox(
        width: 10,
      ),
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF006700),
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
            '조리\n완료',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato'),
          ),
        ),
        onTap: () {},
      ),
      SizedBox(
        width: 10,
      ),
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF004d00),
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
            '전달\n완료',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato'),
          ),
        ),
        onTap: () {},
      ),
      SizedBox(
        width: 60,
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
            child: Icon(Icons.remove, color: Colors.white)),
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
      )
    ]);
  }
}
