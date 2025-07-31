
---

```markdown
# 🦋 DraftWing

**DraftWing** is an intelligent, agentic mobile application built with the power of [Flutter](https://flutter.dev) and driven by [Vertex AI](https://cloud.google.com/vertex-ai). Designed for creators, developers, and bloggers, DraftWing enables effortless generation of well-structured article drafts which you can preview, validate, and publish on platforms like [Medium](https://medium.com), [Dev.to](https://dev.to), or any other markdown-compatible publishing tool.

---

## ✨ Why "DraftWing"?

The name **DraftWing** is a blend of two powerful ideas:
- **"Draft"** → Automatically generates intelligent content drafts.
- **"Wing"** → A subtle nod to [Flutter](https://flutter.dev), giving your content wings to fly!

Together, it symbolizes your AI-powered wingman for article creation 📝🕊️

![DraftWing Banner](assets/showcase/banner.png)

---

## 📲 Key Features

DraftWing offers a seamless, intuitive, and elegant drafting experience:

- ✍️ **AI-Powered Draft Generation**: Generate complete drafts from minimal inputs using the power of Vertex AI.
- 🔎 **Live Markdown Preview**: See your draft come alive in real-time markdown as you build it.
- 📋 **Copy Content Easily**: Copy either raw markdown or rendered body for quick pasting into other platforms.
- 💾 **Local Draft Storage**: Save your drafts locally with a simple tap and revisit anytime.
- 🤖 **Agentic AI Flow**: The app smartly handles AI interactions with minimal disruptions or UI noise.
- 🌗 **Dynamic Dark/Light Theme**: Fully responsive theming that adapts to your system preference for optimal comfort.

---

## 🧠 AI System Prompt Overview

DraftWing uses a tailored system prompt to guide AI responses, focused (by default) on **Flutter**-related content. You can easily modify the prompt to suit your domain.

> You can find the full prompt in [`assets/prompt.md`](assets/prompt.md)

Here’s a sample of the prompt context used:

```

## Your Capabilities

You are knowledgeable in:

* Flutter and Dart
* Firebase and its ecosystem
* State management (e.g., BLoC, Riverpod, Provider, etc.)
* Clean architecture patterns

````

> ℹ️ Reference: [Flutter Gemini Codelab](https://codelabs.developers.google.com/codelabs/flutter-gemini-colorist#3)

---

## 🧑‍💻 Getting Started

To run DraftWing locally, follow these simple steps:

### 🔁 Clone the Repository

```bash
git clone https://github.com/mhmzdev/draftwing.git
cd draftwing
````

### 📦 Install Dependencies

```bash
flutter pub get
```

### 🚀 Run the App

```bash
flutter run
```

---

## 🔧 Development Environment

This project is actively developed and tested using the following setup:

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.29.2, macOS 15.5 darwin-arm64)
[✓] Android SDK (version 34.0.0)
[✓] Xcode (version 16.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2024.1)
[✓] VS Code (version 1.99.3)
[✓] Connected device (5 available)
[✓] Network resources
```

> ✅ No issues found!

---

## 🔥 Firebase & Vertex AI Setup (IMPORTANT)

DraftWing integrates **Firebase** to use **Vertex AI**, which requires minimal setup from your end:

### 🔐 Add Your Firebase Config Files

For the app to run correctly with Firebase services:

* Place `google-services.json` in `android/app/`
* Place `GoogleService-Info.plist` in `ios/Runner/`

All the necessary Firebase initialization and configuration is already handled in the codebase. Just drop in your config files and you're ready to go! 😇

> ⚠️ **Important Note:** If you plan to make this project public, do **not** commit your Firebase configuration files. This app uses Vertex AI, which requires a **Blaze Plan** on Firebase and may incur usage costs.

---

## 👁️ Visual Showcase

Here’s a quick look at the app experience:

<p float="left">
  <img src="assets/showcase/splash.png" width="220">
  <img src="assets/showcase/write.png" width="220">
  <img src="assets/showcase/drafts.png" width="220">
  <img src="assets/showcase/medium_guide.png" width="220">
  <img src="assets/showcase/cache_guide.png" width="220">
  <img src="assets/showcase/profile.png" width="220">
</p>

---

## 🧾 License

This project is licensed under the MIT License.
For more details, see the full [LICENSE](LICENSE.md) file.

---

## 🙌 Acknowledgements

* Built with love using [Flutter](https://flutter.dev)
* Powered by [Google Vertex AI](https://cloud.google.com/vertex-ai)
* Markdown rendering made easy via community packages
* Inspired by the spirit of open-source innovation 💙

---

> Have feedback, improvements, or contributions? Feel free to fork and submit a PR. Let’s build better tools together 🚀

```
