# Event Organizer App

## Overview
The **Event Organizer App** is a Flutter application that allows users to discover, create, and manage events. It integrates with **Supabase** for database management and authentication.

## Features
- 📅 View a list of upcoming events.
- 🔍 Search and filter events by category.
- ➕ Create new events.
- 🗣 Chat functionality using a bottom sheet.
- 👤 User authentication and profile management.

## Tech Stack
- **Frontend:** Flutter (Dart)
- **Backend:** Supabase (PostgreSQL, Authentication, Storage)
- **State Management:** setState (can be replaced with Provider or Riverpod)

## Installation
### Prerequisites
- Install [Flutter](https://flutter.dev/docs/get-started/install) and set up an emulator or a physical device.
- Create a **Supabase** project at [supabase.io](https://supabase.io/).

### Clone the Repository
```bash
  git clone https://github.com/yourusername/event-organizer-app.git
  cd event-organizer-app
```

### Install Dependencies
```bash
  flutter pub get
```

### Configure Supabase
1. In `main.dart`, initialize Supabase:
```dart
await Supabase.initialize(
  url: 'https://your-supabase-url.supabase.co',
  anonKey: 'your-anon-key',
);
```
2. Ensure your Supabase database has an `events` table with the required fields.

### Run the App
```bash
  flutter run
```

## Project Structure
```
/lib
│── models/        # Data models
│── screens/       # UI Screens
│── widgets/       # Reusable widgets
│── main.dart      # Entry point
```

## Supabase Setup
### Database Schema (`events` table)
```sql
CREATE TABLE events (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  category TEXT,
  date_time TIMESTAMP NOT NULL
);
```

### Enable Public Read Access
```sql
CREATE POLICY "Public Read Access" ON public.events FOR SELECT USING (true);
```

## Contributing
1. Fork the repo.
2. Create a new branch: `git checkout -b feature-branch`
3. Make changes and commit: `git commit -m 'Add feature'`
4. Push to the branch: `git push origin feature-branch`
5. Open a Pull Request.

## License
This project is licensed under the MIT License.

