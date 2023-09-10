import 'package:flutter/material.dart';
import 'package:musicplayerapp/widgets/categories_widget.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('SELECT')),
            ListTile(
              title: Text('HIP HOP'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text('MUSIC PLAYER'),
          ],
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(8.0),
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 5.0,
        crossAxisCount: 2,
        children: [
          CategoriesWidget(
            image: 'assets/images/logo.png',
          ),
          CategoriesWidget(image: 'assets/images/sound.webp'),
        ],
      ),
    );
  }
}
