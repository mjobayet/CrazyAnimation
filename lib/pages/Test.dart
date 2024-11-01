

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class Test extends StatelessWidget {
  const Test ({super.key});


  @override
  Widget build(BuildContext context) {
    var size= Get.size;

    RxBool expand = false.obs;


    return Scaffold(
      body: SafeArea(


        child: SizedBox(
            width: size.width ,
            height: size.height,

            child: Obx(() =>  Stack(

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 14),
                  child: GestureDetector(
                    onTap: (){
                      expand.value = true;

                    },
                    child: Positioned(


                      child: Text(expand.value? "ripples" : "expand",style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 31,
                      ),),
                    ),
                  ),
                ),

                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  top: expand.value? size.height*.5 -size.height*.38 *.5: size.height*.5 - size.width*.35 *.5,
                  left: expand.value? size.width*.5 -size.height*.38 *.5 : size.width*.5 - size.width*.35*.5,
                  child:
                  AnimatedContainer(


                    duration: Duration(milliseconds: 500),
                    width: expand.value? size.height*.38 : size.width*.35,
                    height: expand.value? size.height*.38 : size.width*.35,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: expand.value? BorderRadius.circular(70): BorderRadius.circular(1000),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          opacity: expand.value? 1:0,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [

                              Text.rich(TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                      size: size.width * .064,
                                    ),
                                    alignment: PlaceholderAlignment.middle),
                                TextSpan(
                                    text: "items in cart",
                                    style: TextStyle(
                                      fontSize: size.width * .045,
                                      height: 0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    )),
                              ])),
                              SizedBox(
                                height: 10,
                              ),
                              Text.rich(TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                      Icons.history_toggle_off,
                                      color: Colors.white,
                                      size: size.width * .064,
                                    ),
                                    alignment: PlaceholderAlignment.middle),
                                TextSpan(
                                    text: "purchase history",
                                    style: TextStyle(
                                      fontSize: size.width * .045,
                                      height: 0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    )),
                              ])),
                              SizedBox(
                                height: 10,
                              ),
                              Text.rich(TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                      size: size.width * .064,
                                    ),
                                    alignment: PlaceholderAlignment.middle),
                                TextSpan(
                                    text: "items in cart",
                                    style: TextStyle(
                                      fontSize: size.width * .045,
                                      height: 0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    )),
                              ])),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),



                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  top: expand.value? size.height *.8 : size.height*.5- size.width*.29 *.5,
                  left: expand.value? size.width *.75: size.width*.5- size.width*.29*.5,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: expand.value? size.width*.20 : size.width* .29,
                    width: expand.value? size.width*.20 : size.width* .29,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                            duration: Duration(milliseconds: 355),
                            opacity: expand.value? 1:0,
                            child: GestureDetector(
                                onTap: ()
                                {
                                  expand.value = !expand.value;
                                },
                                child: Icon(Icons.restart_alt,color: Colors.white,size: size.width* .23 *.5,)))
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  top: expand.value? size.height*.5- size.width * .5: size.height*.5- size.width*.23 *.5,
                  left: expand.value? size.width*.5 -size.width*.14 *.5 : size.width*.5- size.width*.23*.5,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: expand.value? size.width* .14 : size.width* .23,
                    width: expand.value? size.width* .14 : size.width* .23,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(1000),
                    ),

                  ),
                )
              ],
            ),)


        ),
      ),
    );
  }
}