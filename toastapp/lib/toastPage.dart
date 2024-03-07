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
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal:50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                child: const Padding(
                  padding:  EdgeInsets.all(20.0),
                  child: Text('Click there!',style: TextStyle(color: Colors.white),),
                ),
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: 'I am TILStack. This is a Toast',
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      gravity: ToastGravity.BOTTOM,
                      fontSize: 16.0,
                      timeInSecForIosWeb: 1,
                      toastLength: Toast.LENGTH_SHORT,

                  );
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Cancel there!',style: TextStyle(color: Colors.white),),
                ),
                onPressed: (){
                  Fluttertoast.cancel();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
