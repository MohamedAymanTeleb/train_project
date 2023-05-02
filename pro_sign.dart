import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_sign extends StatefulWidget {
  const pro_sign({super.key});

  @override
  State<pro_sign> createState() => _pro_signState();
}

class _pro_signState extends State<pro_sign> {
  @override
  var user_name = TextEditingController();
  var user_gmail = TextEditingController();
  var user_password = TextEditingController();
  bool is_checked  = false;  
  bool pass = true;
  
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding:EdgeInsets.all(15.0) ,
        width: double.infinity,
        
        child: Column(

          children: [
            Container(
              padding: EdgeInsetsDirectional.only(),
              alignment: AlignmentDirectional.center,
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan,
              ),
              child: Text(
                'Hello ,\nSign up !',
                textAlign: TextAlign.center,
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
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Write Your Name",

              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: user_gmail,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Write Your E-mail",

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
                Checkbox(
                  value: is_checked,
                 onChanged: (bool?value) {
                  setState(() {
                    is_checked = !is_checked ;
                  });
                },

                ),
                Text(
                  "I accept the polict and the terms",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  ),

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
                onPressed: () {
                  print(is_checked);
                },
               child:Text(
                  'Sign up ',
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