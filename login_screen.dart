import 'package:fabacademy/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("delivary app"),
        ),
        body:  Center(
child: Padding(
    padding: const  EdgeInsets.all(20.0),
child: Column(
    children: [
SizedBox(
  height: 180,
child: Image.asset ("assets/WhatsApp Image 2023-02-11 at 8.12.04 PM.jpeg" ,
fit: BoxFit.contain,)

)
     ,SizedBox (height: 20,),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          prefix: Icon(Icons.email),
          contentPadding :EdgeInsets.symmetric(
            vertical:20,
            horizontal:30,
        ),
           label :const Text("Email or phone "),
          border:OutlineInputBorder(),
        ) ),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(
            prefix: Icon(Icons.password),
            contentPadding: EdgeInsets.symmetric(
                vertical:20,
                horizontal: 30

            ),
            label: const Text("Password"),

        ),


              ),

      MaterialButton(
          onPressed: (){},color: Colors.red,
        child: const Text("login",style: TextStyle(
          color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15,
        ),),
      ),
      const SizedBox(height: 20,),
      Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("Dont have an account?!"),
          GestureDetector(
            onTap: (){
Navigator.push(context,
MaterialPageRoute(
    builder:(context)=>RegistrationScreen()
));
            },
            child: const Text("sign up",
        style: TextStyle (
            color:Colors.red,
            fontWeight:FontWeight.bold,fontSize: 15,
            )),
          )

        ],
      )
  ])
)  )
     );
}
}

