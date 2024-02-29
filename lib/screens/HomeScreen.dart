import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
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
                  AwesomeNotifications().createNotification(content: NotificationContent(
                      id: 1, 
                      channelKey: "test_channel",
                    title: "Hello World",
                    body: "this is test notification"
                  ));
                }, 
                child: Text('Raise Simple Notification')
            )
          ],
        ),
      ),
    );
  }
}
