import 'package:flutter/material.dart';
import 'package:spalash_screen_pr/tab/model.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.tealAccent,
            ),

            child: PageView.builder(
              controller: PageController(viewportFraction: 0.7),
              itemCount:imgList.length ,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(imgList[index].imgUrl),
                        fit: BoxFit.cover,
                    )
                  ),

                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      Center(
                        child: Column(
                          children: [
                            SizedBox(height: 120,),


                            Container(
                              child: Text(imgList[index].title.toUpperCase(),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),

                );
              },
            ),

          ),
        ],
      ),
    );
  }
}
