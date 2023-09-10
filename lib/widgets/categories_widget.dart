import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String image;
  const CategoriesWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              color: Colors.grey,
              padding: EdgeInsets.all(8.0),
              width:MediaQuery.of(context).size.width,
              child: Text('HIP HOP'),
            ))
      ],
    );
  }
}
