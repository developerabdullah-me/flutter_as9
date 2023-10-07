import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shoping card'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Shoping Bag",style: TextStyle(fontSize:21,fontWeight: FontWeight.bold,)),
          SizedBox(height: 12,),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                      image:NetworkImage('https://i.ibb.co/k1vX89C/product-8.png'),
                    ),
                   ),
                  ),
                SizedBox(width: 12,),
                Column(
                  children: [
                    Container(
                      child:  RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Color:  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14,)),
                          TextSpan(
                              text: ' Black',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black,fontSize: 14)),
                          TextSpan(
                              text: ' Size:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14)),
                          TextSpan(
                              text: '  M',
                              style: TextStyle(color: Colors.black,fontSize: 14))
                        ]),
                      ),
                    ),

                   SizedBox(height: 15,),
                   Row(
                     children: [
                       Container(
                         width: 20,
                         height: 20,
                         decoration: BoxDecoration(
                           color: Colors.black12,
                           borderRadius: BorderRadius.circular(4.0),
                         ),
                         child: Icon(Icons.add,
                           color: Colors.white,
                           size: 15,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                         child: Text('1',style: TextStyle(fontSize:15, fontWeight:FontWeight.bold),),
                       ),
                       Container(
                         width: 20,
                         height: 20,
                         decoration: BoxDecoration(
                           color: Colors.black12,
                           borderRadius: BorderRadius.circular(4.0),
                         ),
                         child: Icon(Icons.add,
                           color: Colors.white,
                           size: 15,

                         ),
                       ),
                       Container(
                         margin: new EdgeInsets.symmetric(horizontal: 30.0),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20.0),
                           child: Text('1',style: TextStyle(fontSize:15, fontWeight:FontWeight.bold),),
                         ),
                       ),

                     ],
                   )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
