import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sensor_stream/widgets/custom_divider.dart';
import 'package:sensor_stream/widgets/linear_char.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final databaseReference = FirebaseDatabase.instance.ref('DataUser');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: StreamBuilder(
            stream: databaseReference.onValue,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                dynamic data = snapshot.data!.snapshot.value;
                return Column(
                  children: [
                    LinearChar(
                      title: 'Temperature',
                      value: double.tryParse(data['Temp'])?? 0,
                    ),
                    const CustomDivider(),
                    LinearChar(
                      title: 'Humidity',
                      value: double.tryParse(data['Hum'])?? 0,
                    ),
                    const CustomDivider(),
                    Icon(
                      data['Gas'] ? Icons.battery_full : Icons.battery_0_bar_sharp,
                      size: 100,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Gas : ${data['Gas']}',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ],
                );
              }
              else if (snapshot.hasError) {
                return Center(
                  child: Text('Error : ${snapshot.error}'),
                );
              } else if (snapshot.connectionState ==
                  ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return const SizedBox();
            }
          ),
        ),
      ),
    );
  }
}
