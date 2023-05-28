import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_entertainment extends StatefulWidget {
  const pro_entertainment({super.key});

  @override
  State<pro_entertainment> createState() => _pro_entertainmentState();
}

class _pro_entertainmentState extends State<pro_entertainment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
        }, 
        icon: Icon(
          color: Color(0xff42b6f0),
          Icons.arrow_back,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(5),
              color: Color(0xff42b6f0),
              child: Image.network(
                          'https://thumbs.dreamstime.com/b/enjoy-your-time-enjoy-time-you-get-handlettering-perfect-holiday-promotional-design-110544940.jpg',
                    
                        ),
            ),

            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff42b6f0),
                  borderRadius: BorderRadius.circular(40,),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                  child: Column(
                  
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Game zone");
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration:BoxDecoration(
                            color: Colors.white,//Color(0xff42b6f0)
                            borderRadius: BorderRadius.circular(30,),
                          ) ,
                          child: Image.network(
                            'https://marketplace.canva.com/EAE-rfspHQM/1/0/1600w/canva-blue-and-purple-cyberpunk-game-zone-desktop-background-QUVVB5lzUWo.jpg',
                      
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          
                        ),
                      ),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {
                          print("Reading zone");
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration:BoxDecoration(
                            color: Colors.white,//Color(0xff42b6f0)
                            borderRadius: BorderRadius.circular(30,),
                          ) ,
                          child: Image.network(
                            'https://cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-1024x640.jpeg',
                      
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}