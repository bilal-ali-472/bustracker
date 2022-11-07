import 'package:flutter/material.dart';

class SComplaint extends StatefulWidget {
  SComplaint({Key? key}) : super(key: key);

  @override
  State<SComplaint> createState() => _SComplaintPageState();
}

class _SComplaintPageState extends State<SComplaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: Text('Complaints',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black87),),
        
      ),
      body:  Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      // child: Text(
                      //   'Complaints',
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 35,
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'About', border: OutlineInputBorder()),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      // textAlign: TextAlign.start,
                      autofocus: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 230 ),
                          hintText: 'complaint', border: OutlineInputBorder()),
                    ),
                  ), SizedBox(
                    height: 50,
                    width: 250,
                    child:  ElevatedButton(
                        onPressed: ()  {
                          
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.withOpacity(0.75),
                            side: BorderSide(width: 1, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: Text(
                          'Upload Complaint',
                          style: TextStyle(color: Colors.black),
                        )),
                  )
                ]
              )
            )
          ]

        )
      )

    );
  }
}