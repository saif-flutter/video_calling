import 'package:flutter/material.dart';
import 'package:video_calling/video_call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Calling Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: idController,
              decoration: const InputDecoration(
                  hintText: 'Enter the Room ID', border: OutlineInputBorder()),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return VideoCallPage(
                              idController: idController.text.toString());
                        }));
                      },
                      child: Text('Join')))),
        ],
      ),
    );
  }
}
