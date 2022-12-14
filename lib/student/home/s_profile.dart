import 'package:bustracker/student/home/s_settings.dart';
import 'package:flutter/material.dart';

class Sprofile extends StatefulWidget {
  Sprofile({Key? key}) : super(key: key);

  @override
  State<Sprofile> createState() => _SprofileState();
}

class _SprofileState extends State<Sprofile> {
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: Text(
          'profile',
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push<void>(MaterialPageRoute(builder: (context) => SettingsPage(),));
              },
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap:() {
             FocusScope.of(context).unfocus();
          },
          
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://pixlr.com/images/index/remove-bg.webp"))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
        
        color:Theme.of(context).scaffoldBackgroundColor,                          ),
                            color:Colors.amberAccent.shade200,
                            
                          ),
                            child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ))),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildtextfeild("Full Name","alex",false),
               buildtextfeild("E-mail","alex@gmail.com",false),
                buildtextfeild("Password","************",true),
                buildtextfeild("Location","thrithala, kerala",false),
                buildtextfeild("Phone Number","7045768345",false),
                buildtextfeild("Class","1st BCA",false),
                buildtextfeild("Bus No","104",false),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () { }, child: Text("CANCEL",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2.2,
                        color: Colors.black
                      ),)),
                   ElevatedButton(
                    
                      onPressed: () {},
                      
                       child:Text("SAVE",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2.2,
                        color: Colors.black,
                      ),))
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildtextfeild(String labelText, String Placeholder, bool isPasswordTextFeild) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextFeild ? showpassword : false,
                decoration: InputDecoration(
                  suffixIcon: isPasswordTextFeild ? IconButton(
                    onPressed: () {
                      setState(() {
                        showpassword = !showpassword;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye,
                  color: Colors.grey,),
                  ):null,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: labelText,
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: Placeholder,
                  hintStyle: TextStyle(
                    fontSize: 12,
                  )
                ),
              ),
    );
  }
}
