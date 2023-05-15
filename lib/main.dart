import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHomePage(title: 'Apprendre Le Drawer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int index  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const DrawerHeader(
                    child: Center(
                      child: Icon(Icons.car_rental, color: Colors.orange, size: 50,),
                    )
                );
              } else {
                return ListTile(
                  title: Text("Element $index"),
                  onTap: () {
                    setState(() {
                      this.index = index;
                      Navigator.pop(context);
                    });
                  },
                );
              }
            }
        ),
      ),
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:  Text('Ici sera le Drawer numéro: $index'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
