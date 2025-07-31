Sure! Here's the complete `README.md` content written in a clean, professional, and classic format—all in one go so you can copy and paste it directly:

---

```markdown
# 🦋 DraftWing

**DraftWing** is an intelligent, agentic mobile application built using [Flutter](https://flutter.dev) and powered by [Vertex AI](https://cloud.google.com/vertex-ai). Designed for developers, writers, and bloggers, DraftWing helps you generate AI-powered drafts that you can validate and publish on platforms like [Medium](https://medium.com), [Dev.to](https://dev.to), or any markdown-supported platform.

---

## ✨ Name Inspiration

The name **DraftWing** comes from a combination of:

- **"Draft"** – Refers to generating article drafts.
- **"Wing"** – A nod to Flutter, the framework powering this app.

Together, they represent your creative wingman for article generation! 📝🕊️

![DraftWing Banner](assets/showcase/banner.png)

---

## 📲 Key Features

DraftWing provides a rich and streamlined drafting experience:

- ✍️ **Generate AI Drafts**: Create article drafts using minimal input with the help of Vertex AI.
- 🔎 **Live Markdown Preview**: View real-time markdown rendering as your draft is built.
- 📋 **Copy Markdown**: Easily copy the complete markdown content or preview version.
- 💾 **Save Locally**: Save drafts on your device for offline use or future reference.
- 🤖 **Smooth AI Flow**: AI interaction is seamless, backgrounded, and non-intrusive.
- 🌗 **Dynamic Theming**: Automatic support for light and dark modes based on system preference.

---

## 🧠 System Prompt Customization

DraftWing uses a system prompt to instruct the AI. By default, it is optimized for **Flutter**-related articles but you can customize it to your needs.

The current system prompt includes:

```

## Your Capabilities

You are knowledgeable in:

* Flutter and Dart
* Firebase and its ecosystem
* State management (e.g., BLoC, Riverpod, Provider etc.)
* Clean architecture patterns

````

You can find and update this in the file: [`assets/prompt.md`](assets/prompt.md)

Reference: [Google Codelab – Flutter + Gemini Colorist](https://codelabs.developers.google.com/codelabs/flutter-gemini-colorist#3)

---

## 🧑‍💻 Getting Started

To run DraftWing locally:

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

## 🧰 Development Environment

The app has been developed and tested in the following environment:

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

• No issues found!
```

---

## 🔥 Firebase + Vertex AI Setup

DraftWing uses Firebase to access Vertex AI. Setup is simple:

1. **For Android**:

   * Add your `google-services.json` file to `android/app/`

2. **For iOS**:

   * Add your `GoogleService-Info.plist` to `ios/Runner/`

Firebase is already integrated, so no additional configuration is required.

> ⚠️ **Important:** Do not upload your Firebase config files to public repositories. Vertex AI requires a Blaze Plan and may incur charges for usage.

---

## 👀 UI Showcase

A preview of DraftWing's interface:

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

This project is licensed under the **MIT License**.
See the [LICENSE](LICENSE.md) file for full license details.

---

## 🙏 Acknowledgements

* Built using [Flutter](https://flutter.dev)
* Powered by [Google Vertex AI](https://cloud.google.com/vertex-ai)
* Open-source packages and community contributions
* Inspired by the goal of empowering creators through accessible AI

---

> 💡 Have feedback or ideas? Contributions and PRs are welcome! Let’s improve DraftWing together.

```

---

Let me know if you want this generated as a downloadable `.md` file or want to add badges, contribution guidelines, or Firebase setup images!
```
