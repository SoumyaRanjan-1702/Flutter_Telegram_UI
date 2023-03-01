import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            //icon: Icon(Icons.home_outlined),
          ),
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    VerticalDivider(
                      color: Colors.transparent,
                      thickness: 1,
                      width: MediaQuery.of(context).size.width * 0.38,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print(
                        "You pressed Icon Elevated Button",
                      );
                    },
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ), //icon data for elevated button
                    label: Text(
                      "Nikita Israni \n nikitaisrani \t\t \t\t",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
                    ), //label text
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "FEATURES",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Memories \t \t \t \t \t \t \t \t \t \t \t \t",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 135, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },

                          icon: Icon(
                            Icons.block,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Blocked Profile",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "SETTINGS",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Notifications \t \t",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 239, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Time Zone \t \t \t \t \t \t \t \t \t \t   ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 145, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.settings_suggest,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Others \t \t\t\t\t\t\t\t\t\t",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "ABOUT",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Share BeReal\t \t \t",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.star_outline,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Rate \t\t\t\t \t \t  \t  ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 239, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.help_outline,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "Help \t \t \t \t \t \t \t \t \t \t  \t \t \t   ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 145, 20),
                          ), //label text
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print(
                              "You pressed Icon Elevated Button",
                            );
                          },
                          icon: Icon(
                            Icons.info,
                            color: Colors.white,
                          ), //icon data for elevated button
                          label: Text(
                            "About \t \t\t\t\t\t\t\t\t\t",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                          ), //label text
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
          ),
        ));
  }
}
