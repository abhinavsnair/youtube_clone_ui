// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://i.ytimg.com/vi/U4orj8vViiU/maxresdefault.jpg',
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 26,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumbs_up_down,
                                color: Colors.white,
                                size: 26,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 26,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.closed_caption_off,
                                color: Colors.white,
                                size: 26,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.settings_outlined,
                                color: Colors.white,
                                size: 26,
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Row(
                          children: [
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '0.28/4.30',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Container(
                              width: 100,
                              height: 5,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Weenknd-Blinding Lights (official Audio)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          ' crore views 2 yr ago',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          '15 lakh',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.white,
                        ),
                        Text(
                          'Dislike',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.video_collection,
                          color: Colors.white,
                        ),
                        Text(
                          'Create',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.downloading,
                          color: Colors.white,
                        ),
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[900],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://i.ytimg.com/vi/LKsgDcckur0/maxresdefault.jpg',
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Weeknd',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '2.98 crore subscribers',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'SUBSCRIBE',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[900],
                ),
                SizedBox(
                      height: 290,
                      child: Column(
                        children: [
                          Container(
                              height: 220,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://i.pinimg.com/564x/9d/eb/0a/9deb0a7359c6991e29fbc0de29607839.jpg'),
                                    fit: BoxFit.cover),
                                color: Colors.black,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://i.ytimg.com/vi/LKsgDcckur0/maxresdefault.jpg',),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                   ( 'The Weeknd & Ariana Grande - Save Your Tears'),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('739K Views. 3yr ago',
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
