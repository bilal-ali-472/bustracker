import 'package:flutter/material.dart';

class STrack extends StatefulWidget {
  STrack({Key? key}) : super(key: key);

  @override
  State<STrack> createState() => _STrackState();
}

class _STrackState extends State<STrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: Text('Track',style: TextStyle(fontSize: 21,color: Colors.black87
        ,fontWeight: FontWeight.bold),),
      ),
      body:  Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      // child: Text(
                      //   'Dasboard',
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 35,
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'Source', border: OutlineInputBorder()),
                    ),
                  ),
                 
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'Destination', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: ()  {
                          
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.withOpacity(0.75),
                            side: BorderSide(width: 1, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Find',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),

                ]
              )
            ),
          ]
        )  
      )

    );
  }
}