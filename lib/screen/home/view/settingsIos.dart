import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:settings/screen/home/provider/settingsProviderIos.dart';

class IosSettings extends StatefulWidget {
  const IosSettings({Key? key}) : super(key: key);

  @override
  State<IosSettings> createState() => _IosSettingsState();
}

class _IosSettingsState extends State<IosSettings> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 35,
                        color: CupertinoColors.lightBackgroundGray),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CupertinoColors.systemFill,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  CupertinoIcons.search,
                                  color: CupertinoColors.inactiveGray,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                      color: CupertinoColors.inactiveGray),
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CupertinoColors.systemFill,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/image/ac.jpg'),
                                radius: 33,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 22, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Jack Sardhara                ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: CupertinoColors
                                              .lightBackgroundGray),
                                    ),
                                    Text(
                                      "Apple ID, iCloud, Media & Purchases",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(CupertinoIcons.chevron_forward,
                                  color: CupertinoColors.inactiveGray),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 12,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Common",
                              style: TextStyle(
                                  color: CupertinoColors.lightBackgroundGray,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CupertinoColors.systemFill,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.globe,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Language",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "English",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.cloud,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Environment",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Production",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 12,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Account",
                              style: TextStyle(
                                  color: CupertinoColors.lightBackgroundGray,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CupertinoColors.systemFill,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.phone,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Phone number",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.mail,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.square_arrow_left,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Sign out",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 12,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Secutiry",
                              style: TextStyle(
                                  color: CupertinoColors.lightBackgroundGray,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CupertinoColors.systemFill,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.phonelink_lock_rounded,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Lock app in background",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Transform.scale(
                                      scale: 0.9,
                                      child: CupertinoSwitch(
                                        value: Provider.of<settingsProviderIos>(
                                                context,
                                                listen: true)
                                            .isCheck,
                                        onChanged: (value) {
                                          Provider.of<settingsProviderIos>(
                                                  context,
                                                  listen: false)
                                              .switc(value);
                                        },
                                        activeColor:
                                            CupertinoColors.activeGreen,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.lock,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Change Password",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.fingerprint,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Use Fingerprint",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Transform.scale(
                                      scale: 0.9,
                                      child: CupertinoSwitch(
                                        value: Provider.of<settingsProviderIos>(
                                                context,
                                                listen: true)
                                            .check,
                                        onChanged: (value) {
                                          Provider.of<settingsProviderIos>(
                                                  context,
                                                  listen: false)
                                              .swith(value);
                                        },
                                        activeColor:
                                            CupertinoColors.activeGreen,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 12,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Misc",
                              style: TextStyle(
                                  color: CupertinoColors.lightBackgroundGray,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        child: Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CupertinoColors.systemFill,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.settings_solid,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "General",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 3),
                                      child: CircleAvatar(radius: 10,backgroundColor: CupertinoColors.destructiveRed,child: Text("1"),),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.doc_on_clipboard,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Open Source Licenses",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        CupertinoIcons.doc_text,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Terms of Service",
                                        style: TextStyle(
                                            color:
                                                CupertinoColors.inactiveGray),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(CupertinoIcons.chevron_forward,
                                        color: CupertinoColors.inactiveGray),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
