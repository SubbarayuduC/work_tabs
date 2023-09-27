import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Demo'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  icon: Icon(Icons.bus_alert),
                ),
                Tab(
                  icon: Icon(Icons.bike_scooter),
                ),
                Tab(
                  icon: Icon(Icons.electric_bike),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.directions_transit),
              Icon(Icons.bus_alert),
              Icon(Icons.bike_scooter),
              Icon(Icons.electric_bike)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("Drawer Header")),
                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Car'),
                ),
                ListTile(
                  title: Text('Train'),
                ),
                ListTile(
                  title: Text('Bus'),
                ),
                ListTile(
                  title: Text('bike_schooter'),
                ),
                ListTile(
                  title: (Text('electric-bike')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}