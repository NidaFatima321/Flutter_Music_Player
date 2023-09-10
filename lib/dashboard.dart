import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:musicplayerapp/widgets/dashboard_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LATEST",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.purple,
                      Colors.blue
                    ],
                    stops: [
                      0.1,
                      0.6,
                      0.9
                    ],
                    begin: Alignment.topLeft,
                    end:Alignment.bottomRight
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ASIM AZHAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 3.0
                      ),
                    ),
                    Text('MEHERMAAN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        fontWeight: FontWeight.bold
                      )
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: TextButton(
                              onPressed: (){}, child: Text('LISTEN NOW'),
                            style:  ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.black),
                              backgroundColor: MaterialStateProperty.all(Colors.grey),

                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text("MOST PLAYED",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              CarouselSlider(
                  items: [
                    DashboardWidget(imageSinger: 'assets/images/dard.jfif'),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.4,
                    initialPage: 0,
                    reverse: false,
                    // autoPlay: true,
                    // autoPlayInterval: Duration(seconds: 3),
                    // autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    // enlargeCenterPage: true,
                    // enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
