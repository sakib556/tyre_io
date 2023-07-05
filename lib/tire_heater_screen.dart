import 'package:flutter/material.dart';
import 'package:tyre_io/text_switch_row.dart';

class TireHeaterScreen extends StatelessWidget {
  const TireHeaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff46474b),
      appBar: AppBar(
        title: const Text(
          'Tire Heater 1',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Switch(
              activeTrackColor:Colors.green ,
              //activeColor: Colors.green,
              value: true, // Set the initial value of the switch
              onChanged: (value) {
                // Implement your on/off button logic here
              },
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white, // Change the color of the back arrow
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(
                height: 180,
                width: double.infinity,
                child: Icon(
                  Icons.image,
                  size: 200,
                ), // Replace Icon with your desired widget
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              _table(),
              const SizedBox(
                height: 10,
              ),
              TextSwitchRow(
                  labelText: "Send notifications",
                  value: true,
                  onChanged: (value) {}),
              const SizedBox(
                height: 10,
              ),
              TextSwitchRow(
                  labelText: "Autotimer settings",
                  value: true,
                  onChanged: (value) {}),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _table() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      height: 50,
      child: Row(
        //  mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              // color: Colors.yellow,
              border: Border(
                right: BorderSide(color: Colors.black),
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
              onPressed: () {
                // Implement your + button logic here
              },
            ),
          ),
          const Expanded(
            //width: 180,
            child: Center(
              child: Text(
                '10:00',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.black),
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {
                // Implement your - button logic here
              },
            ),
          ),
        ],
      ),
    );
  }
}
