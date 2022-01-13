import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../controllers/phone_number_controller.dart';

class PhoneNumberView extends GetView<PhoneNumberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhoneNumberView'),
        centerTitle: true,
      ),
      body:HomePage2(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  String _code;
  String signature = "{{ app signature }}";
TextEditingController phoneN=TextEditingController();
  @override
  void initState() {
    print(phoneN.text);
    print('phoneN.text');
    super.initState();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PhoneFieldHint(
                // controller: phoneN,
                // child: TextField(),
              ),
              Spacer(),
              PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: TextStyle(fontSize: 20, color: Colors.black),
                  colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),
                currentCode: _code,
                onCodeSubmitted: (code) {},
                onCodeChanged: (code) {
                  if (code.length == 6) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
              ),
              Spacer(),
              TextFieldPinAutoFill(
                currentCode: _code,
              ),
              Spacer(),
             /* RaisedButton(
                child: Text('Listen for sms code'),
                onPressed: () async {
                  await SmsAutoFill().listenForCode;
                },
              ),
              RaisedButton(
                child: Text('Set code to 123456'),
                onPressed: () async {
                  setState(() {
                    _code = '123456';
                  });
                },
              ),
              SizedBox(height: 8.0),
              Divider(height: 1.0),
              SizedBox(height: 4.0),
              Text("App Signature : $signature"),
              SizedBox(height: 4.0),
              RaisedButton(
                child: Text('Get app signature'),
                onPressed: () async {
                  signature = await SmsAutoFill().getAppSignature;
                  setState(() {});
                },
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => CodeAutoFillTestPage()));
                },
                child: Text("Test CodeAutoFill mixin"),
              )*/
            ],
          ),
        );

  }
}

class CodeAutoFillTestPage extends StatefulWidget {
  @override
  _CodeAutoFillTestPageState createState() => _CodeAutoFillTestPageState();
}

class _CodeAutoFillTestPageState extends State<CodeAutoFillTestPage> with CodeAutoFill {
  String appSignature;
  String otpCode;

  @override
  void codeUpdated() {
    setState(() {
      otpCode = code;
    });
  }

  @override
  void initState() {
    super.initState();
    listenForCode();

    SmsAutoFill().getAppSignature.then((signature) {
      setState(() {
        appSignature = signature;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    cancel();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        title: Text("Listening for code"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: Text(
              "This is the current app signature: $appSignature",
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Builder(
              builder: (_) {
                if (otpCode == null) {
                  return Text("Listening for code...", style: textStyle);
                }
                return Text("Code Received: $otpCode", style: textStyle);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
