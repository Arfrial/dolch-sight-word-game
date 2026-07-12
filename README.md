# Flash Dash

## Overview

Flash Dash is an educational Flutter application designed to help young readers practice Dolch sight words. Players choose a reading level and complete a timed round of flashcards by marking each word as **"I Know It"** or **"Practice Again."** Words marked for additional practice are recycled back into the round until they are answered correctly.

At the end of each game, the app displays the player's score, completion time, and stores the results so progress can be viewed later on the Statistics screen.

---

## Features

- Five Dolch sight word levels
  - Pre-Primer
  - Primer
  - 1st Grade
  - 2nd Grade
  - 3rd Grade
- Randomly selects 10 sight words each game
- Swipe or button controls
  - Swipe Right / I Know It
  - Swipe Left / Practice Again
- Missed words recycle until completed
- Game timer
- Results screen displaying:
  - First-try score
  - Percentage
  - Completion time
- Statistics page displaying:
  - Games Played
  - Best Score
  - Average Score
  - Total Points
- Scores saved locally using SharedPreferences

---

## Technologies Used

- Flutter
- Dart
- Material Design
- SharedPreferences

---

## Project Structure

```text
lib/
│
├── data/
│   └── dolch_words.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── flash_dash_screen.dart
│   ├── results_screen.dart
│   └── stats_screen.dart
│
├── services/
│   └── storage_service.dart
│
└── main.dart
```

---

## How to Run

1. Clone the repository.

```bash
git clone <repository-url>
```

2. Install dependencies.

```bash
flutter pub get
```

3. Run the application.

```bash
flutter run
```

---

## How to Play

1. Launch the application.
2. Select a Dolch reading level.
3. Press **PLAY**.
4. Read the displayed sight word.
5. Swipe right or press **I KNOW IT** if you know the word.
6. Swipe left or press **PRACTICE AGAIN** if you need more practice.
7. Continue until every word has been answered correctly.
8. View your score, completion time, and statistics.

---

## Screenshots

### Home Screen

![Home Screen](screenshots/home.png)

### Flash Dash

![Flash Dash](screenshots/game.png)

### Results

![Results](screenshots/results.png)

### Statistics

![Statistics](screenshots/stats.png)

---

## Future Improvements

Some ideas for future development include:

- Additional sight word levels
- Sound effects
- Animations
- More educational mini-games
- User profiles
- Cloud save support
- Online leaderboards

---

## Author

Anthony Ryan

CPSC 4150 – Mobile Application Development

Summer 2026