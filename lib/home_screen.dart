import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    // main axis alignment : start
    // cross axis alignment : center
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
            Icons.menu,
        ),
        title: Text(
          'Detect Flame',
        ),
        actions:
        [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ) ,
            onPressed: onNotification,
          ),
          IconButton(
            icon: Icon(
          Icons.search,
    ),
            onPressed: ()
            {
              print('search icon clicked');
            },
          ),
        ],
      ),
      body: Column(
        children:
        [
          Container(
            width: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children:
                  [
                    Image(
                      image: NetworkImage(
                        'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000',
                      ),
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.pinkAccent.withOpacity(.6),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      );
  }




  // when notification icon button clicked
 void onNotification()
 {
   print('notification clicked');
 }


}