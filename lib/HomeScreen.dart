import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _fileMTeController = TextEditingController ();
  final   TextEditingController _fileLTeController = TextEditingController ();

  double mresult=1;
  double mTresult=0;

  int itemCount = 0;
  int itemCount2 = 0;
  int itemCount3 = 0;
  double unitPrice = 10.0;
  double unitPriceTow = 20.0;
  double unitPriceThree = 30.0;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }


  void incrementItem2() {
    setState(() {
      itemCount2++;
    });
  }

  void decrementItem2() {
    if (itemCount2 > 0) {
      setState(() {
        itemCount2--;
      });
    }
  }

  void incrementItem3() {
    setState(() {
      itemCount3++;
    });
  }

  void decrementItem3() {
    if (itemCount3 > 0) {
      setState(() {
        itemCount3--;
      });
    }
  }

  void showCongratulatoryMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! Checkout successful.'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    double totalPrice = itemCount * unitPrice;
    double totalPriceTow = itemCount2 * unitPriceTow;
    double totalPriceThree = itemCount3 * unitPriceThree;
    double mostTotalAmount=  totalPrice + totalPriceTow + totalPriceThree;
    return Scaffold(

      appBar: AppBar(title: Text('shoping Cart'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Text('Shoping bag',style: TextStyle(fontSize: 20) ,),
         Card(
           child: Row(
             children: [
               Image.network(
                 'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
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
                  Row(
                    children: [
                      Card(
                        child: IconButton(onPressed: decrementItem,
                            icon: Icon(Icons.remove,size: 20,color: Colors.black,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                     Text("$itemCount"),
                      Card(
                        child: IconButton(
                            onPressed: incrementItem,
                            icon: Icon(Icons.add,size: 20,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),


                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child:  Text('\$${totalPrice.toStringAsFixed(2)}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),

         Card(
           child: Row(
             children: [
               Image.network(
                 'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
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
                  Row(
                    children: [
                      Card(
                        child: IconButton(onPressed: decrementItem2,
                            icon: Icon(Icons.remove,size: 20,color: Colors.black,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                     Text("$itemCount2"),
                      Card(
                        child: IconButton(
                            onPressed: incrementItem2,
                            icon: Icon(Icons.add,size: 20,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child:  Text('\$${totalPriceTow.toStringAsFixed(2)}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),

         Card(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Image.network(
                 'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
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
                  Row(
                    children: [
                      Card(
                        child: IconButton(onPressed: decrementItem3,
                          style: IconButton.styleFrom(
                          shadowColor: Colors.white,
                          ),
                            icon: Icon(Icons.remove,size: 20,color: Colors.black,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                     Text("$itemCount3"),
                      Card(
                        child: IconButton(
                            onPressed: incrementItem3,
                            icon: Icon(Icons.add,size: 20,)),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child:  Text('\$${totalPriceThree.toStringAsFixed(2)}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),

          SizedBox(height: 16,),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
                Text("\$${mostTotalAmount.toStringAsFixed(2)}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
              ],
            ),
          ),

          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            // Make the container take up the full width
            padding: EdgeInsets.all(16.0),

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor:Colors.white,backgroundColor:Color(0xffdb3022),),
              onPressed: showCongratulatoryMessage,
              child: Text('Full Width Button'),
            ),
          ),
        ],
      ),
    );
  }
}
