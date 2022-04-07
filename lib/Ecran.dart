import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuSection extends StatelessWidget {

  final List menu = ["Message","Online","Group","Call"] ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: const Color.fromRGBO(46,44,40,1),
      height: 70,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:const EdgeInsets.all(15),
          child: Row(
            children: menu.map((item){
             return Container(
               margin: const EdgeInsets.only(right:50),
               child: Text(item,
               style:  GoogleFonts.inter(
                 color: Colors.white60,
                 fontSize:24,
                 fontWeight: FontWeight.w500,
               )
               ),
             );
            }).toList(),
          ),
        ),
      ),

    );
  }
}
class FavoriteSection extends StatelessWidget {

  final List FavoriteContact = [
    {
      'name': "Alla",
      'profile': 'images/a1.jpg',
    },


    {
      'name': "franck",
      'profile': 'images/a2.jpg',
    },

    {
      'name': "Abib",
      'profile': 'images/a2.jpg',
    },

    {
      'name': "Alowa",
      'profile': 'images/a3.jpg',
    },

    {
      'name': "Asa",
      'profile': 'images/a4.jpg',
    },

    {
      'name': "Isaac",
      'profile': 'images/a5.jpg',
    },

    {
      'name': "Alow",
      'profile': 'images/a2.jpg',
    },

    {
      'name': "Oluwa",
      'profile': 'images/a6.jpg',
    },

    {
      'name': "AZZRTH",
      'profile': 'images/a7.png',
    },
  ] ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      color:const Color.fromRGBO(46,44,40,1),
      child: Container(
        padding: const EdgeInsets.only(top: 5,bottom: 15),
        decoration:  const BoxDecoration(
          color:Color.fromRGBO(37, 183, 154, 1),
          borderRadius: BorderRadius.only(
              topRight:Radius.circular(40),
              topLeft: Radius.circular(40)
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:const EdgeInsets.only(left:20),
                  child:  Text("FavoriteContacts",
                  style: GoogleFonts.inter(
                    color:Colors.white,
                    fontSize:14,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color:Colors.white,
                    size:20
                  ), onPressed: () {  },
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children:FavoriteContact.map((favorite){
                  return Container(
                    margin: const EdgeInsets.only(left:15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape:BoxShape.circle,
                          ),
                          child:CircleAvatar(
                            radius:20,
                            backgroundImage: AssetImage(favorite['profile']),
                          )
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(favorite['name'])
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],

        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {

  final List messages=[
    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'comment vas tu mon bro?',
      'unRead': 0,
      'date':'16.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'comment vas tu?',
      'unRead': 0,
      'date':'16.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'et la soirée?',
      'unRead': 0,
      'date':'16.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'Bonjour',
      'unRead': 0,
      'date':'17.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'Hello. ce soir je peux te récupérer?',
      'unRead': 0,
      'date':'15.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'comment vas tu?',
      'unRead': 0,
      'date':'18.00',
    },

    {
      'senderprofile':'images/a1.jpg',
      'sendername':'Lara',
      'message':'comment vas tu?',
      'unRead': 0,
      'date':'17.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: messages.map((message){
          return InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
                child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:const Color.fromRGBO(37, 183, 154, 1),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(message['senderprofile'])
                          )
                        ),
                      )
                    ],
                )
                )
            );
        }).toList(),
      ),
    );
  }
}



class Ecran extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: const Color.fromRGBO(33, 185, 157, 1),
        child: const Icon(
          Icons.edit,
          size:20,
        ),
      ),
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(46,44,40,1),
        leading: IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.menu,
              color:Colors.white,
              size:30
            )),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: const Icon(
                  Icons.search,
                  color:Colors.white,
                  size:30
              )),
        ],
      ),

      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          MessageSection(),
        ],
      ),

    );
  }
}
