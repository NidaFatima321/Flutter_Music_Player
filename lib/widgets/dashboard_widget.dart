import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  final String imageSinger;
  const DashboardWidget({Key? key, required this.imageSinger}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageSinger,height: 150,),
        Text('DARD'),
        Text('ASIM AZHAR')
      ],
    );
  }
}
