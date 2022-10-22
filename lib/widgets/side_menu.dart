import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          const _DrawerHeader(),

          ListTile(
            leading: const Icon( Icons.pages_outlined ),
            title: const Text('Home'),
            onTap: () {
              //Navigator.pushReplacementNamed(context, HomeScreen.routerName );
            },
          ),

          ListTile(
            leading: const Icon( Icons.people_outline ),
            title: const Text('People'),
            onTap: () {

            },
          ),

          ListTile(
            leading: const Icon( Icons.settings_outlined ),
            title: const Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              //Navigator.pushReplacementNamed(context, SettingsScreen.routerName );
            },
          ),


        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        )
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            
            margin: const EdgeInsets.symmetric( horizontal: 5, vertical: 10),
            width: 90,
            height: 90,
            child: const CircleAvatar(
              radius: 110,
              backgroundColor: Color.fromARGB(255, 50, 200, 130),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/pas-rick.jpeg'),

              ),

            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.symmetric( horizontal: 1, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Rick Garro | Pastor de red', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),),
                Text('rickoton.garro@gmail.com', style: TextStyle(fontSize: 12, color: Colors.white),)
              ],
            ),
          )

          
        ],
      ),
    );
  }
}