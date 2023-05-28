import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_favourite extends StatefulWidget {
  const pro_favourite({super.key});

  @override
  State<pro_favourite> createState() => _pro_favouriteState();
}

class _pro_favouriteState extends State<pro_favourite> {
  final searchController = TextEditingController();
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
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Favourites',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
          SizedBox(height: 20,),
          TextFormField(
            controller: searchController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20,),
              ),
              hintText: "Search",
            ),
            onChanged: (value) {
              print(searchController.text);
            },
            
          ),
          SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 5,),
                decoration: BoxDecoration(
                  color: Color(0xff42b6f0),
                  borderRadius: BorderRadius.circular(15,),
                ),
                child: Row(
                  children: [
                    Text(
                      '974',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 30,),
                    Text(
                      'Luxor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    Text(
                      '   to   ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    Text(
                      'Farshout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 40,),
                    IconButton(onPressed: () {
                        
                      }, icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        ),
                        
                        )
                    
                  ],
                ),
              ),
                  SizedBox(height: 10,),
                  Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 5,),
                decoration: BoxDecoration(
                  color: Color(0xff42b6f0),
                  borderRadius: BorderRadius.circular(15,),
                ),
                child: Row(
                  children: [
                    Text(
                      '974',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 30,),
                    Text(
                      'Luxor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    Text(
                      '   to   ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    Text(
                      'Farshout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 40,),
                    IconButton(onPressed: () {
                        
                      }, icon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        ),
                        
                        )
                    
                  ],
                ),
              ),
                  SizedBox(height: 10,),
                  
                ],
              ),
            ),
          ),
          
          ],
        ),
      ),
    );
  }
}