# 🏃‍♂️ Daily Health Tracker

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter" />
  <img src="https://img.shields.io/badge/Architecture-MVC%20+%20GetX-purple" />
  <img src="https://img.shields.io/badge/State%20Management-GetX-orange" />
  <img src="https://img.shields.io/badge/UI-Premium%20Dark%20Mode-black" />
</p>

<p align="center">
  A premium Flutter application built for the Internship Assignment.  
  Tracks health metrics, activity logs, and smart reminders —  
  built with clean architecture & smooth animations.
</p>

---

## 📦 Download APK

👉 **Direct APK Link:**  
https://drive.google.com/file/d/1sOQLuAPOfT9qf-7UBk-gPYDmpDLZAmFY/view?usp=drivesdk

> Make sure the Drive file access is set to **“Anyone with the link can view”**

---

## 🎥 App Demo

> Demo video is included inside the repository.

If embedding video:

```html
<video src="https://drive.google.com/file/d/1QmZbGSef_dvRc3hHPKopS6mnybp3AX9Z/view?usp=drivesdk" controls width="700"></video>
```

---

## 📱 UI Preview

<p align="center">
  <img src="https://github.com/user-attachments/assets/e049f60e-ea9a-4fe4-8cf1-e7ecdc04e2e7" width="250"/>
  <img src="https://github.com/user-attachments/assets/8da4a8cb-3e63-4711-94a8-ce828d09e541" width="250"/>
  <img src="https://github.com/user-attachments/assets/627ef271-9173-42c3-9138-4b13aec8d9ef" width="250"/>
</p>

---

# ✨ Features

## 🔐 Authentication
- Google Sign-In using `google_sign_in`
- Firebase Authentication
- Mock fallback for development/demo

---

## 📊 Interactive Dashboard

### 📈 Health Graph
- 7-Day Steps Visualization
- Built using `fl_chart`
- Smooth animated rendering

### ⏳ Countdown Timer
- 10-minute activity reminder
- Auto-refresh & manual reset
- Animated transitions

### 📋 Activity Logs
- REST API Integration (`JSONPlaceholder`)
- Infinite Scroll (Lazy Loading)
- Pull-to-Refresh
- Smooth staggered animations

---

# 🎨 Premium UI / UX

- 🌙 Elegant Dark Mode (Slate & Indigo theme)
- 🪄 Fade, Scale & Slide animations
- 🧩 Staggered list animations (`flutter_staggered_animations`)
- 📱 Fully responsive layout
- 🎯 Clean spacing & modern typography (`google_fonts`)

---

# 🏗️ Architecture

The app follows **MVC (Model-View-Controller)** combined with **GetX**:

- Reactive state management using `.obs` and `Obx`
- Dependency Injection with GetX
- Named routing system
- Clean separation of concerns

---

# 📁 Project Structure

```
lib/
├── controllers/    # Business logic & state
├── models/         # Data models
├── routes/         # Navigation config
├── services/       # API & Auth services
├── utils/          # Theme & Constants
├── views/          # UI screens
├── widgets/        # Reusable components
└── main.dart       # App entry point
```

---

# 🚀 Getting Started

## Prerequisites
- Flutter SDK (latest recommended)
- Android Studio / VS Code
- Firebase Project (for real Google Sign-In)

---

## Installation

1️⃣ Clone repository

```bash
git clone https://github.com/tarunmehrda/daily-health-tracker
```

2️⃣ Install dependencies

```bash
flutter pub get
```

3️⃣ Google Sign-In Setup

- Add `google-services.json` to:
```
android/app/
```

- Add SHA-1 in Firebase
- Enable Google provider in Firebase Authentication

> ⚠ If not configured, app logs in using Mock User.

4️⃣ Run app

```bash
flutter run
```

---

# 📦 Dependencies

| Package | Purpose |
|----------|----------|
| get | State management & routing |
| google_sign_in | Google authentication |
| firebase_auth | Firebase authentication |
| fl_chart | Data visualization |
| http | REST API calls |
| flutter_staggered_animations | Smooth animations |
| google_fonts | Typography |
| intl | Date formatting |

---

# 🧠 Evaluation Coverage

✔ Google Authentication  
✔ MVC + GetX  
✔ REST API Integration  
✔ Lazy Loading  
✔ Countdown Timer  
✔ Animations  
✔ Dark Mode  
✔ Clean UI  
✔ Professional README  

---

# 👨‍💻 Developed By

**Tarun Kumar Meharda**  
Flutter Developer | AI/ML Engineer
