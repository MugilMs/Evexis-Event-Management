import 'package:event_organizer/models/event.dart';

class EventRepository {
  Future<List<Event>> getEvents({
    String? category,
    bool approvedOnly = true,
  }) async {
    // Mock data
    return [
      Event(
        id: '1',
        title: 'Flutter Conference',
        description: 'Annual Flutter Developer Conference',
        dateTime: DateTime.now().add(const Duration(days: 10)),
        location: 'Tech Center',
        latitude: 37.7749,
        longitude: -122.4194,
        organizerId: '1',
        category: 'Technology',
        price: 99.99,
        capacity: 200,
        imageUrl: 'https://picsum.photos/200',
      ),
    ];
  }

  Future<Event> createEvent(Event event) async {
    return event;
  }
}
