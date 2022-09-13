import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndSettings extends StatefulWidget {
  const AndSettings({Key? key}) : super(key: key);

  @override
  State<AndSettings> createState() => _AndSettingsState();
}

class _AndSettingsState extends State<AndSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("Setting ui",style: TextStyle(fontSize: 30),),
            centerTitle: false,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Common",style: TextStyle(color: Colors.red,fontSize: 15),),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text("Language"),
                          subtitle: Text("English"),
                        ),
                        Container(height: 1,
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.cloud),
                          title: Text("Environment"),
                          subtitle: Text("production"),
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Account",style: TextStyle(color: Colors.red,fontSize: 15),),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.call),
                          title: Text("Phone number"),
                        ),
                        Container(height: 1,
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text("Email"),
                        ),
                        Container(height: 1,
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.logout_rounded),
                          title: Text("Sign out"),
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Secutiry",style: TextStyle(color: Colors.red,fontSize: 15),),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.phonelink_lock_rounded),
                          title: Text("Lock app in background"),
                        ),
                        Container(height: 1,
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.fingerprint),
                          title: Text("Use fingerprint"),

                        ),
                        Container(height: 1,
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        ListTile(
                          leading: Icon(Icons.lock),
                          title: Text("Change Password"),
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Misc",style: TextStyle(color: Colors.red,fontSize: 15),),
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}