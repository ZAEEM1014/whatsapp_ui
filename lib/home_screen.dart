import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.red,
              tabs: [

                Text(
                  'Chats',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Status',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Calls',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            PopupMenuButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Groups'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(width: 15),
          ],
        ),
        body: TabBarView(children: [

          ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/29382971/pexels-photo-29382971/free-photo-of-pensive-adult-man-enjoying-a-sunny-day-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('John Wick'),
                subtitle: Text('where is my dog'),
                trailing: Text('3:31 am'),
              );
            },
          ),

          ListView.builder(

            itemCount: 30,
            itemBuilder: (context, index) {
              if(index==0){
                return Column(
                  children: [
                    ListTile(

                      title: const Text('Status Updates',style: TextStyle(fontWeight: FontWeight.bold),),

                    ),

                    Divider(thickness: 1.5,),
                    ListTile(
                      leading: Container(

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 5,
                            )
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/29382971/pexels-photo-29382971/free-photo-of-pensive-adult-man-enjoying-a-sunny-day-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text('where is my dog'),
                      trailing: const Text('3:31 am'),
                    ),
                    Divider(thickness: 1.5,),
                    SizedBox(height: 10,),
                  ],
                );

              }else{
                return Column(
                  children: [



                    ListTile(
                      leading: Container(

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 5,
                            )
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/29382971/pexels-photo-29382971/free-photo-of-pensive-adult-man-enjoying-a-sunny-day-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text('where is my dog'),
                      trailing: const Text('3:31 am'),
                    ),
                    Divider(thickness: 1.5,),
                    SizedBox(height: 10,),
                  ],
                );
              }

            },
          ),
          Column(
            children: [
              const ListTile(
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  trailing: Text(
                    'More',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
              const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Ammad Nasir'),

                  trailing: Icon(Icons.call)),
              const ListTile(
                  title: Text(
                    'Recents',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  ),

              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/29382971/pexels-photo-29382971/free-photo-of-pensive-adult-man-enjoying-a-sunny-day-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text(index/3==0?'John Wick':'F-ON-OFF', style: TextStyle(
                          color: index % 23== 0 ? Colors.red : Colors.black, // Set color conditionally
                        ),),
                        subtitle: Row(children:[
                          Icon(index/3==0? Icons.call_received:Icons.call_made,color: index % 2 == 0 ? Colors.red : Colors.green,),
                          Text(index/3==0?'Today 2:30 pm' : 'Yesterday 8:00 am' ),
                        ]),

                        trailing: Icon(
                            index / 2 == 0 ? Icons.video_call : Icons.call));
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
