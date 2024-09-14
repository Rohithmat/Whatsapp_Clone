import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/call_model.dart';
// Define or import `callsData` appropriately
// Ensure callsData is defined here or in a separate file imported at the top

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, index) {
        final call = callsData[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: call.pic.isNotEmpty
                ? NetworkImage(call.pic)
                : null, // Handle empty or null image URLs
            child: call.pic.isEmpty
                ? Icon(Icons.person,
                    color: Colors.white) // Default icon for empty image
                : null,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                call.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                call.time,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
