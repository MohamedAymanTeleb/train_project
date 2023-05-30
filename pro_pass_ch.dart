import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_pass_ch extends StatefulWidget {
  const pro_pass_ch({super.key});

  @override
  State<pro_pass_ch> createState() => _pro_pass_chState();
}

class _pro_pass_chState extends State<pro_pass_ch> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text(
            'Password Changing',
            style: TextStyle(
              color: Color(0xff42b6f0),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "Current Password",
              ),
              onChanged: (value) {
                print(passwordController.text);
              },
              obscureText: true,
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: newPasswordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "New Password",
              ),
              onChanged: (value) {
                print(newPasswordController.text);
              },
              obscureText: true,
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: checkPasswordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "Retype the new password",
              ),
              onChanged: (value) {
                print(checkPasswordController.text);
              },
              obscureText: true,
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                print("Done");
              },
              child: Container(              
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20,),
                  color:Color(0xff42b6f0),
                ),
                child: Center(
                  child: Text(
                    'Change Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      backgroundColor:Color(0xff42b6f0),
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
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