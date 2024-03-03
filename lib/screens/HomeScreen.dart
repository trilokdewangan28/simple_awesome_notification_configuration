import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:local_notification_tutorials/NotificationController.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('local notification'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  NotificationController.raiseSimpleNotification();
                }, 
                child: Text('Raise Simple Notification')
            )
          ],
        ),
      ),
    );
  }
}
