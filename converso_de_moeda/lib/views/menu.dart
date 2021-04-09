import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color.fromRGBO(13, 10, 19, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 57),
            child: Row(
              children: [
                Text(
                  'Reais',
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "R\$",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                width: 300,
                child: TextField(
                  cursorColor: Colors.white,
                  cursorWidth: 4,
                  cursorHeight: 55,
                  showCursor: true,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Digite o valor",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white30,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
