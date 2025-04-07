# Flutter Custom Linear Progress Bar

# Run able on: Flutter Channel stable, 3.7.8

A customizable linear progress bar for Flutter.

<img width="415" alt="image" src="https://github.com/user-attachments/assets/51b05ccc-e8ef-441b-ae5d-cac764b9b92d" />

## Features
- Support for extra stacked progress
- Text label inside or outside the bar
- Optional inner box shadow

## 🚀 Basic Usage

```dart
CustomProgressBar(
  progress: 0.6,
  title: 'Progress',
)
```

---

## ➕ With Additional Progress

```dart
CustomProgressBar(
  progress: 0.6,
  plusProgress: 0.2,
  title: 'Progress',
)
```

---

## 📝 With Text Inside the Bar

```dart
CustomProgressBar(
  progress: 0.8,
  textInBar: '80%',
  title: 'Progress',
)
```

---

## 🧭 Change Title Position

```dart
CustomProgressBar(
  progress: 0.7,
  title: 'Progress',
  titleStyle: TitleStyle.onTop, // or onLeft, inBar
)
```

---
