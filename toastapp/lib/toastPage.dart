import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({super.key});

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal:50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              child: const Text('Click there!'),
              onPressed: (){
                Fluttertoast.showToast(
                    msg: 'I am TILStack. This is a Toast',
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    gravity: ToastGravity.BOTTOM,
                    fontSize: 16.0,
                    timeInSecForIosWeb: 1,
                    toastLength: Toast.LENGTH_SHORT,

                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
              ),
              child: const Text('Cancel there!'),
              onPressed: (){
                Fluttertoast.cancel();
              },
            ),
          ],
        ),
      ),
    );
  }
}
