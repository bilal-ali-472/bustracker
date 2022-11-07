import 'package:flutter/material.dart';

class SNotification extends StatefulWidget {
  SNotification({Key? key}) : super(key: key);

  @override
  State<SNotification> createState() => _SNotificationState();
}

class _SNotificationState extends State<SNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor:Colors.amber[400]
      ),
      // body: Center(
      //   child: ListView(children: [
      //     Container(
      //       child: Column(children: [
      //         Center(
      //           child: Padding(
      //             padding: const EdgeInsets.only(top: 20),
      //             // child: Text(
      //             //   'Notification',
      //             //   style: TextStyle(
      //             //       color: Colors.black,
      //             //       fontSize: 35,
      //             //       fontWeight: FontWeight.bold),
      //             // ),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(20),
      //           child: TextField(
      //             autofocus: true,
      //             decoration: InputDecoration(
      //                 hintText: 'Message', border: OutlineInputBorder()),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 50,
      //           width: 250,
      //           child:  ElevatedButton(
      //                   onPressed: ()  {
                          
      //                   },
      //                   style: ElevatedButton.styleFrom(
      //                       primary: Colors.grey.withOpacity(0.75),
      //                       side: BorderSide(width: 1, color: Colors.white),
      //                       shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(40))),
      //                   child: Text(
      //                     'Upload Complaint',
      //                     style: TextStyle(color: Colors.black),
      //                   )),
      //         )
      //       ]),
      //     )
      //   ]),
      // ),
    );
  }
}
