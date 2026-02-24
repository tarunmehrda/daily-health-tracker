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

## 🎥 App Demo (Auto Play)

<p align="center">
  <video src="https://drive.google.com/uc?export=download&id=YOUR_FILE_ID" controls autoplay loop muted width="700"></video>
</p>

> 📌 Upload your `daily-health-tracker.mp4` to Google Drive  
> → Make it "Anyone with link can view"  
> → Copy File ID  
> → Replace `YOUR_FILE_ID` above  

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
- Mock fallback for demo environments

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
- Loading shimmer effect

---

# 🎨 Premium UI / UX Design

- 🌙 Elegant Dark Mode (Slate & Indigo theme)
- 🪄 Smooth Fade, Scale & Slide animations
- 🧩 Staggered list animations (`flutter_staggered_animations`)
- 📱 Responsive Layout for all screen sizes
- 🎯 Clean spacing & consistent typography (`google_fonts`)

---

# 🏗️ Architecture

The app follows **MVC (Model-View-Controller)** combined with **GetX**.

### 🔹 State Management
Reactive UI using `.obs` and `Obx`

### 🔹 Dependency Injection
Controllers & Services decoupled

### 🔹 Routing
Named routes using GetX

---

# 📁 Project Structure


lib/
├── controllers/ # Business logic & state
├── models/ # Data models
├── routes/ # Navigation config
├── services/ # API & Auth services
├── utils/ # Theme & Constants
├── views/ # Screens
├── widgets/ # Reusable components
└── main.dart


---

# 🚀 Getting Started

## Prerequisites
- Flutter SDK (latest)
- Android Studio / VS Code
- Firebase Project (for Google Sign-In)

---

## Installation

1️⃣ Clone repository

```bash
git clone https://github.com/yourusername/daily-health-tracker.git

2️⃣ Install dependencies

flutter pub get

3️⃣ Google Sign-In Setup

Add google-services.json to:

android/app/

Add SHA-1 in Firebase

Enable Google provider in Firebase Authentication

⚠ If not configured, app automatically logs in using Mock User.

4️⃣ Run app

flutter run
📦 Dependencies
Package	Purpose
get	State management & routing
google_sign_in	Google authentication
firebase_auth	Firebase authentication
fl_chart	Data visualization
http	REST API calls
flutter_staggered_animations	Smooth list animations
google_fonts	Premium typography
intl	Date formatting
🧠 Evaluation Coverage

✔ Google Authentication
✔ MVC + GetX
✔ REST API Integration
✔ Lazy Loading
✔ Countdown Timer
✔ Animations
✔ Dark Mode
✔ Clean UI
✔ README Documentation

👨‍💻 Developed By

Tarun Kumar Meharda
Flutter Developer | AI/ML Engineer


---

# 🔥 Why This README Is Strong

- Clean
- Professional
- Premium UI
- Recruiter-friendly
- Shows architecture maturity
- Shows animation understanding
- Clear setup instructions
- Modern formatting

---

# ⚠️ Important Note About Video

GitHub does NOT truly support autoplay video directly.

Best professional solution:

Upload video directly in README using drag & drop in GitHub editor.  
GitHub will host it like this:


https://github.com/user-attachments/assets/
....


Then embed:

```markdown
<video src="VIDEO_LINK" controls width="700"></video>
