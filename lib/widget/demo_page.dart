import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StreamBuilderDemoPageState();
}

class _StreamBuilderDemoPageState extends State<StreamBuilderDemoPage> {
  StreamController<String> streamController = StreamController();
  StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
//    subscription = stream.stream.listen((value) {
//      print("====>$value");
//    });
//    //stream.add("更改前");
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
    streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    print("=====>build");
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<String>(
            stream: streamController.stream,
            initialData: "初始值",
            builder: (context, snapshot) {
              print("=====>snapshot");
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Select lot');
                case ConnectionState.waiting:
                  return Text('Awaiting bids...${snapshot.data}');
                case ConnectionState.active:
                  return Text('\$${snapshot.data}');
                case ConnectionState.done:
                  return Text('\$${snapshot.data} (closed)');
              }
              //return Text(snapshot.data);
              //return Text("");
            }),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("更改"),
              onPressed: () {
                streamController.add("更改后");
              },
            ),
            RaisedButton(
              child: Text("关闭"),
              onPressed: () {
                streamController.close();
              },
            ),
            RaisedButton(
              child: Text("setst"),
              onPressed: () {
                setState(() {

                });
              },
            ),
          ],
        )
      ),
    );
  }
}
