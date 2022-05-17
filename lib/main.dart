import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "To Do App",
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HelloPage()
    );
  }
}

class HelloPage extends StatelessWidget{
  const HelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.question_answer_outlined),
        title: const Text("What Do You Want To Do Today?"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("Hello World from me!"),
                        action: SnackBarAction(
                            label: "OK", onPressed: (){

                        }
                        ),
                      ));
                },
                child: const Text("Hello from SnackBar")),
            const SizedBox(height: 10),
            OutlinedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return  AlertDialog(
                          title: const Text("Hello"),
                          content: const Text("Hello from Dialog"),
                          actions: [
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text("Close"))
                          ],
                        );
                      });
                },
                child: const Text("Hello from Dialog"))
          ],
        ),
      ),
    );
  }
}
