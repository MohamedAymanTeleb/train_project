import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pro_profile extends StatefulWidget {
  const pro_profile({super.key});

  @override
  State<pro_profile> createState() => _pro_profileState();
}

class _pro_profileState extends State<pro_profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            'Profile Details',
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
          children: [
            CircleAvatar(
             backgroundImage: NetworkImage(
              'https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child.png',
          
             ),
              radius: 60,
            ),
            SizedBox(height: 40,),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "Name",
              ),
              onChanged: (value) {
                print(nameController.text);
              },
              
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "Email",
              ),
              onChanged: (value) {
                print(emailController.text);
              },
              
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline,),
                suffixIcon: TextButton(
                  child: Text(
                    'Change',
                    style: TextStyle(
                      color: Color(0xff42b6f0),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  onPressed: () {
                    
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
                hintText: "Password",
              ),
              onChanged: (value) {
                print(passwordController.text);
              },
              obscureText: true,
            ),
            SizedBox(height: 50,),
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
                    'Save Changes',
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