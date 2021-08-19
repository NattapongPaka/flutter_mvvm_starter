import 'package:flutter/material.dart';
import 'package:mvvm_starter/src/utils/keyboard_hider.dart';

// abstract class _BaseStatefulState<T extends StatefulWidget> extends State<T> {

//   _BaseStatefulState() {
//     // Parent constructor
//   }
//   void baseMethod() {
//     // Parent method
//   }
// }

// class BasePage extends StatefulWidget {
//   BasePage({Key key}) : super(key: key);

//   @override
//   BasePageState createState() => BasePageState();
// }

abstract class BasePageState<T extends StatefulWidget> extends State<T> {
  showLoadingDialog({required BuildContext context}) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: Colors.black54,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Wait....",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget builds(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return KeyboardHider(
      child: builds(context),
    );
  }
}
