import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  bool isSelected1=false;
  bool isSelected2=false;
  bool isSelected3=false;
  bool isSelected4=false;
  bool isSelected5=false;
  String stringValue="No Value";
  Color _iconColor1=Colors.grey;
  Color _iconColor2=Colors.grey;
  Color _iconColor3=Colors.grey;
  Color _iconColor4=Colors.grey;
  Color _iconColor5=Colors.grey;


  @override
  void initState() {
    super.initState();
    getAllSavedData();
    // You can use the initState where you can get all the saved categories and the assign it based on it.
  }
  getAllSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? value = prefs.getBool("youKey");

    // For first time you get null data so no value
    // is assigned so it will not assign anything
    if (value != null) stringValue = value.toString();

    setState(() {});
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 130,
          backgroundColor: Colors.black54,
          title: Text('NITR Times',
            style: TextStyle(
              fontWeight: FontWeight.bold,

              fontFamily: 'Source Serif Pro',
              fontSize: 45,
            ),
          ),


          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pushReplacementNamed(context, '/search');
                });
              },
              icon: Icon(Icons.search),
              iconSize: 40.0,
            )

          ],

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(2.0),
            children: [
              Icon(Icons.person
              ),
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Welcome Users',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Josefin Sans',
                      fontSize: 25,

                    ),

                  ),
                ),


              ),
              ListTile(
                  leading: IconButton(onPressed: () {
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/login');
                    });
                  },
                    icon: Icon(Icons.person,
                      color: Colors.black,
                    ),
                    iconSize: 20,

                  ),
                  title: Container(
                    padding: EdgeInsets.all(0.0),
                    child: TextButton(onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, '/login');
                      });
                    },
                      child: Text('Admin Login',
                        style: TextStyle(

                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )


              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 1,
                  width: 50,
                  color: Colors.black,

                ),

              )
            ],

          ),

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ Container(
                    padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 5.0),

                    child: Text(
                      'Latest',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontFamily: 'Source Serif Pro',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.filter_alt_outlined),
                      iconSize: 40,

                    )

                  ],
                ),
            GestureDetector(
              onTap: (){

              },
              child: Card(
                child: SizedBox(

                  height: 70,
                  child: ListTile(
                    title: Text('Monday Morning',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1447992389780508689/sMbVLJub_400x400.png'),
                      radius: 30,

                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.thumb_up, color: _iconColor1,
                      ),
                      iconSize: 35,
                      onPressed: () async{
                        if (isSelected1==false){
                          isSelected1=true;
                          print("Liked");
                          setState(() {
                            _iconColor1=Colors.black;
                          });


                        }
                        else {
                          isSelected1 = false;
                          print("Not Liked");
                          setState(() {
                            _iconColor1=Colors.grey;
                          });
                        }

                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool("youKey", isSelected1);
                      setState(() {

                      });
                      },

                    ),

                  ),
                ),


              ),
            ),
            Card(
              child: SizedBox(
                height: 70,
                child: ListTile(
                  title: Text('Monday Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1447992389780508689/sMbVLJub_400x400.png'),
                    radius: 30,

                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.thumb_up,color: _iconColor2),
                    iconSize: 35,
                    onPressed: () async{

    if (isSelected2==false){
    isSelected2=true;
    print("Liked");
    setState(() {
    _iconColor2=Colors.black;
    });


    }
    else {
    isSelected2 = false;
    print("Not Liked");
    setState(() {
    _iconColor2=Colors.grey;
    });
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("youKey", isSelected2);
    setState(() {

    });
                    },
                  ),

                ),
              ),


            ),
            Card(
              child: SizedBox(
                height: 70,
                child: ListTile(
                  title: Text('Economic Times',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1285571205966073857/rE3KyZFW_400x400.jpg'),
                    radius: 25,

                  ),
                  trailing: IconButton(
                  icon: Icon(Icons.thumb_up,color: _iconColor3),
                    iconSize: 35,
                    onPressed: () async {
                      if (isSelected3 == false) {
                        isSelected3 = true;
                        print("Liked");
                        setState(() {
                          _iconColor3 = Colors.black;
                        });
                      }
                      else {
                        isSelected3 = false;
                        print("Not Liked");
                        setState(() {
                          _iconColor3 = Colors.grey;
                        });
                      }
                    }
                  ),



                ),
              ),


            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 5.0),

              child: Text(
                'Trending',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontFamily: 'Source Serif Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 70,
                child: ListTile(
                  title: Text('Monday Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1447992389780508689/sMbVLJub_400x400.png'),
                    radius: 30,

                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.thumb_up,color: _iconColor4,),
                    iconSize: 35,
                     onPressed: (){
    if (isSelected4==false){

    isSelected4=true;
    print("Liked");
    setState(() {
    _iconColor4=Colors.black;
    });
    }

    else {
    isSelected4 = false;
    print("Not Liked");
    setState(() {
    _iconColor4=Colors.grey;
    });
    }
    }
                  ),

                ),
              ),


            ),
            Card(
              child: SizedBox(
                height: 70,
                child: ListTile(
                  title: Text('Economic Times',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1285571205966073857/rE3KyZFW_400x400.jpg'),
                    radius: 25,

                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.thumb_up,color: _iconColor5,),
                    iconSize: 35,
                    onPressed: (){
    if (isSelected5==false){
    isSelected5=true;
    print("Liked");
    setState(() {
    _iconColor5=Colors.black;
    });


    }
    else {
    isSelected5 = false;
    print("Not Liked");
    setState(() {
    _iconColor5=Colors.grey;
    });
    }
    }
                  ),

                ),
              ),


            ),


          ],
        )

    );
  }
}





