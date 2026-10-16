# Flutter Task App --- AA Programming

A simple interactive Task App built with **Flutter** and **Dart** as
part of the AA Programming YouTube tutorial series.

This project introduces the fundamentals of Flutter by building a task
list UI and updating task status with checkboxes.

> **AA Programming** --- Real Code. Real Problems. Practical Solutions.

## Features

-   Display a list of tasks
-   Mark a task as completed using a checkbox
-   Update the UI when task status changes
-   Show completed tasks with strikethrough text
-   Separate task UI into a reusable `TaskItem` widget
-   Demonstrate basic state management with `setState()`

## Tech Stack

-   [Flutter](https://flutter.dev/)
-   [Dart](https://dart.dev/)
-   Material Design widgets
-   Visual Studio Code
-   Android device or emulator

## Getting Started

### Prerequisites

Install Flutter and configure an Android device or emulator. Verify your
setup by running:

``` bash
flutter doctor
```

### Run the App

1.  Clone this repository.

2.  Open the project directory in your terminal.

3.  Download the project dependencies:

    ``` bash
    flutter pub get
    ```

4.  Check the available devices:

    ``` bash
    flutter devices
    ```

5.  Run the application:

    ``` bash
    flutter run
    ```

## Project Structure

``` text
lib/
└── main.dart    # App entry point, task screen, TaskItem widget, and Task model
```

## What You'll Learn

-   Flutter project basics
-   The role of `MaterialApp` and `Scaffold`
-   Building a list with `ListView.builder`
-   The difference between `StatelessWidget` and `StatefulWidget`
-   Handling checkbox changes with callbacks
-   Updating UI state with `setState()`
-   Creating a reusable custom widget
-   Keeping task data in a simple Dart model

## Example Tasks

The app starts with these sample tasks:

-   [x] Learn Flutter
-   [ ] Build first app
-   [ ] Connect to API

The task data is currently stored locally in the app. It is not
connected to a backend API yet.

## Tutorial Series

This repository accompanies **Video #02** in the AA Programming tutorial
series:

**Flutter untuk Pemula --- Membuat Aplikasi Pertama (Task App)**

The next step in the series is to connect the Flutter application to an
**ASP.NET Core Web API**, retrieve data from the backend, and display it
in the app.

## About AA Programming

AA Programming shares practical tutorials about software development,
including Flutter, ASP.NET Core, REST APIs, databases, debugging, and
developer workflows.

-   YouTube: [AA
    Programming](https://www.youtube.com/@aaprogramming9885)

## License

This project is provided for learning and tutorial purposes. If you plan
to reuse or redistribute the code, add a license that matches your
intended use.
