class Event {
  final String id;
  final String title;
  final String description;
  final DateTime dateTime;
  final String location;
  final double latitude;
  final double longitude;
  final String? organizerId;
  final String category;
  final double price;
  final int capacity;
  final String imageUrl;
  final bool isApproved;

  const Event({
    required this.id,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.location,
    required this.latitude,
    required this.longitude,
    this.organizerId,
    required this.category,
    required this.price,
    required this.capacity,
    required this.imageUrl,
    this.isApproved = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'dateTime': dateTime.toIso8601String(),
        'location': location,
        'latitude': latitude,
        'longitude': longitude,
        'organizerId': organizerId,
        'category': category,
        'price': price,
        'capacity': capacity,
        'imageUrl': imageUrl,
        'isApproved': isApproved,
      };

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        dateTime: DateTime.parse(json['date_time']),
        location: json['location'],
        latitude: json['latitude'].toDouble(),
        longitude: json['longitude'].toDouble(),
        organizerId: json['organizer_id'],
        category: json['category'],
        price: (json['price'] as num).toDouble(),
        capacity: json['capacity'],
        imageUrl: json['image_url'],
        isApproved: json['is_approved'] ?? false,
      );
}
