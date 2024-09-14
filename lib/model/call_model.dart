class CallModel {
  final String name;
  final String time;
  final String pic;

  CallModel({required this.name, required this.time, required this.pic});
}

List<CallModel> callsData = [
  CallModel(
      name: 'Alice',
      time: '10:00 AM',
      pic: 'https://example.com/alice.jpg' // Example URL for Alice's pic
      ),
  CallModel(
      name: 'Bob',
      time: '10:15 AM',
      pic: 'https://example.com/bob.jpg' // Example URL for Bob's pic
      ),
  CallModel(
      name: 'Charlie',
      time: '10:30 AM',
      pic: 'https://example.com/charlie.jpg' // Example URL for Charlie's pic
      ),
];
