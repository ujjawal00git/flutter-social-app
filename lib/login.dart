import 'package:flutter/material.dart';
import 'package:socialapp/main.dart';
import 'package:socialapp/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(child: Icon(Icons.account_circle_rounded),
            radius: 50,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
              border:Border.all( color: Colors.black,width: 3),
           ) ,
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22,vertical: 15),
            child: TextFormField(

              controller: emailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                hintText: 'Enter your email',
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            child: TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                hintText: 'Enter your password',
                labelText: 'Password',
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text("By continuing, you agree to our"),
          const Text("Terms & Conditions",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          const SizedBox(height: 5,),
          SizedBox(
            height: 45,
            width: 180,
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InstagramHomePage(),));
            },
                child: const Text("Login",style: TextStyle(fontSize: 15,color: Colors.black),)
            ),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationForm(),));
          }, child: Text("Don't have an account ?signup"))
        ],
      ),
    ),);
  }
}