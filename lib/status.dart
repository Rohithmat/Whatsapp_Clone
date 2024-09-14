import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'data:image/jpeg;base64,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', // Consider adding a default image URL here
                          width: 50,
                          height: 50.0,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 23, 179, 28),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Tap to add status',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.grey,
            child: Text(
              'Recent Updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: StatusData.length,
            itemBuilder: (context, index) => Column(
              children: [
                Divider(height: 0.1),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(StatusData[index].pic),
                  ),
                  title: Text(
                    StatusData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  subtitle: Text(
                    StatusData[index].time,
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
