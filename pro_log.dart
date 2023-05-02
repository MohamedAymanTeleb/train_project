import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_log
 extends StatefulWidget {
  const pro_log
  ({super.key});

  @override
  State<pro_log> createState() => _pro_logState();
}

class _pro_logState extends State<pro_log> 
{
  var user_name = TextEditingController();
  var user_password = TextEditingController();
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(15.0) ,
        width: double.infinity,
        
        child: Column(

          children: [
            Container(
              padding: EdgeInsetsDirectional.only(),
              alignment: AlignmentDirectional.topEnd,
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan,
              ),
              child: Text(
                'Welcome back ,\nLog in !',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 170),
            TextFormField(
              controller: user_name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Write Your E-mail",
                  hoverColor: Colors.pink,
                  focusColor: Colors.red,

              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: user_password,
              obscureText: pass,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                          icon: Icon(pass?Icons.visibility:Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              pass=!pass;
                            });
                          },),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Write Your Password',
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton(onPressed: () {
                  
                }, 
                child: Text(
                  "Remember me",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  )),
                SizedBox(width: 140,),
                TextButton(onPressed: () {

                }, 
                child: Text("Forgot password ?",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  )),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              width: 160,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyan,
              ),
              child: TextButton(
                onPressed: () {},
               child:Text(
                  'Log in ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ), 
               ),
            ),      
            SizedBox(height: 60),
          ],
        ),

      ) ,
    );
  }
}