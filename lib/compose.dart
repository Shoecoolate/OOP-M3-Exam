import 'package:flutter/material.dart';
import 'package:login_ui_design/dashboard.dart';

class Comp extends StatefulWidget {
  Comp({Key key}) : super(key: key);

  @override
  ComposeTweet createState() => ComposeTweet();
}

class ComposeTweet extends State<Comp> {
  String text = '';
  bool isButtonActive = true;
  TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;

      setState(() => this.isButtonActive = isButtonActive);
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Compose Tweet'),
          // centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Insert Tweet'),
                border: OutlineInputBorder(),
              ),
              controller: controller,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onSurface: Colors.blue
              ),
              child: Text('Post'),
              onPressed: isButtonActive
                ? () {
                setState(() => isButtonActive = false);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context)=> new Home())
                );
                  }
                : null,
            )
          ]
        )

    );
  }
}