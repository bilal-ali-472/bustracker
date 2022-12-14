import 'package:bustracker/driver/screens/d_profilesettng.dart';
import 'package:flutter/material.dart';

class DriverProfilepage extends StatefulWidget {
  DriverProfilepage({Key? key}) : super(key: key);

  @override
  State<DriverProfilepage> createState() => _DriverProfilepageState();
}

class _DriverProfilepageState extends State<DriverProfilepage> {
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push<void>(MaterialPageRoute(
                  builder: (context) => Dsettingspage(),
                ));
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
          onTap: () {
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
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.amberAccent.shade200,
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
              
              buildTextFeild("Full Name", "alex", false),
              buildTextFeild("E-mail", "alex@mail.com", false),
              buildTextFeild("Password", "************", true),
              buildTextFeild("Phone No", "4757****56", false),
              buildTextFeild("Location", "thrithala,kerala", false),
              buildTextFeild("Driver ID", "DVR@6758", false),
              SizedBox(height: 30,),
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

  Widget buildTextFeild(
      String labelText, String Placeholder, bool isPasswordTextFeild) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextFeild ? showpassword:false,
        decoration: InputDecoration(
            suffix: isPasswordTextFeild? IconButton
            (onPressed: () {
              setState(() {
                showpassword = !showpassword;
              });
            },
             icon:Icon(Icons.remove_red_eye,
            color: Colors.grey,)):null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,labelStyle:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: Placeholder,
            hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
