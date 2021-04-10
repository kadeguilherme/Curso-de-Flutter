import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'myicons.dart';

class BolsaDeValores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ClipRRect(

        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   child: SvgPicture.asset(foto),
        // ),

        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red[500]),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: ClipOval(
            child: SvgPicture.asset(
              foto,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // CircleAvatar(
        //                   radius: 100.0,
        //                   backgroundImage: SvgPicture.asset(foto),
        // ),
        Column(
          children: [
            Text(
              'Dolaress',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'US\$ 5,80',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'US\$ 400,00',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              '5,19%',
              style: TextStyle(
                  color: Color.fromRGBO(24, 222, 103, 1),
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          ],
        )
      ],
    );
  }
}
