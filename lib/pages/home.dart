import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(33, 150, 243, 1),
        title: const Text(
          "Telegram",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        // backgroundImage: ExactAssetImage("assets/p1.jpg"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Soumyaranjan Parhi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "+91 8691945696",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 25,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            tile(msg: "New Group", im: Icons.people),
            tile(msg: "New Seceret Chat", im: Icons.lock),
            tile(msg: "New Broadcast List", im: Icons.speaker_phone_outlined),
            const Divider(
              height: 10,
            ),
            TextButton(onPressed: () {}, child:  tile(msg: "Contacts", im: Icons.contact_page_sharp),),
            tile(msg: "Theming", im: Icons.format_paint),
            tile(msg: "Settings", im: Icons.settings),
            tile(msg: "Telwgram FAQ", im: Icons.question_answer),
          ],
        ),
      ),
      body: Column(
        children: [
          list(
              url: 'assets/p4.jpg',
              name: "Kamlesh",
              tym: "11.11pm",
              desc: "How are u?",
              msg: "2",
              isRead: true),
          const Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/p4.jpg',
              name: "Jignesh",
              tym: "11.11pm",
              desc: "kya haal chaal?",
              msg: "",
              isRead: false),
          const Divider(
            height: 0.3,
          ),
          list(
              url: 'assets/p4.jpg',
              name: "Ichigo Kurosaki",
              tym: "11.11pm",
              desc: "Bankai!!!",
              msg: "2",
              isRead: true),
          const Divider(
            height: 0.3,
          ),
          // list(url: 'assets/four.jfif',name: "Alia",tym: "11.11pm",desc: "miss u <3",msg: "",isRead: false),
          // const Divider(height: 0.2,),
          // list(url: 'assets/five.jfif',name: "Amy",tym: "11.11pm",desc: "baby...",msg: "",isRead: false),
          // const Divider(height: 0.2,),
          // list(url: 'assets/six.jfif',name: "Dani",tym: "11.11pm",desc: "whr r u baby?",msg: "2",isRead: true),
          // const Divider(height: 0.2,),
          // list(url: 'assets/7.jfif',name: "Rose",tym: "11.11pm",desc: "missing u",msg: "",isRead: false),
          // const Divider(height: 0.2,),
          // list(url: 'assets/8.jfif',name: "Anistone",tym: "11.11pm",desc: "hai my love <3",msg: "2",isRead: true),
          // const Divider(height: 0.2,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.create,
            color: Colors.white,
          ),
          onPressed: null),
    );
  }

  ListTile tile({required String msg, required IconData im}) {
    return ListTile(
      leading: Icon(
        im,
        color: Colors.black54,
        size: 30,
      ),
      title: Text(
        msg,
        style: const TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w800),
      ),
    );
  }

  ListTile list(
      {required String url,
      required String name,
      required String tym,
      required String desc,
      required String msg,
      required bool isRead}) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              tym,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              desc,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                border: isRead ? Border.all(width: 1) : Border.all(width: 0),
                borderRadius: BorderRadius.circular(50),
                color: isRead ? Colors.green : Colors.white,
              ),
              child: Text(
                msg,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
