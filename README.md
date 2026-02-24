# Daily Health Tracker 🏃‍♂️

A premium Flutter application built for the Internship Assignment. This app tracks health metrics, activity logs, and provides a countdown reminder for the next activity.

## 📱 Features

- **Google Authentication**: Seamless sign-in using `google_sign_in`. (Includes mock fallback for development environments).
- **Interactive Dashboard**:
  - **Health Graph**: Visual representation of the last 7 days of step data using `fl_chart`.
  - **Countdown Timer**: A 10-minute countdown for the next walk/activity reminder.
  - **Quick Stats**: At-a-glance view of calories, steps, and workouts.
- **Activity Logs**:
  - **REST API Integration**: Fetches activity data from JSONPlaceholder.
  - **Lazy Loading**: Infinite scroll implementation to load more logs as you scroll.
  - **Pull-to-Refresh**: Refresh the logs with a simple swipe.
- **Premium UI/UX**:
  - **Dark Mode**: Sleek Slate & Indigo design.
  - **Smooth Animations**: Fade, scale, and slide animations using `flutter_staggered_animations`.
  - **Responsive Layout**: Designed to look great on all screen sizes.

## 🛠️ Architecture

The app follows the **MVC (Model-View-Controller)** pattern combined with **GetX** for:
- **State Management**: Reactive UI updates using `.obs` and `Obx`.
- **Dependency Injection**: Decoupled controllers and services.
- **Routing**: Clean and named routes.

## 📁 Project Structure

```text
lib/
├── controllers/ # Business logic & State
├── models/      # Data structures
├── routes/      # Navigation config
├── services/    # API & Auth services
├── utils/       # Theme & Constants
├── views/       # UI Screens
├── widgets/     # Reusable UI components
└── main.dart    # App entry point
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest version recommended)
- Android Studio / VS Code
- A Google Cloud Project (for real Google Sign-In)

### Installation
1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. **Google Sign-In Setup**:
   - For Android: Add your `google-services.json` to `android/app/`.
   - For iOS: Add your `GoogleService-Info.plist` to `Runner/`.
   - *Note: The app will fallback to a Mock User if no configuration is found.*
4. Run the app:
   ```bash
   flutter run
   ```

## 📦 Dependencies
- `get`: State management & Routing
- `google_sign_in`: Authentication
- `fl_chart`: Data visualization
- `http`: API requests
- `flutter_staggered_animations`: UI Polish
- `google_fonts`: Typography
- `intl`: Date formatting
