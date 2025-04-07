# Flutter Custom Linear Progress Bar

# Run able on: Flutter (Channel stable, 3.7.8, on macOS 15.3.2 24D81 darwin-arm64, locale en-VN)

A customizable linear progress bar for Flutter.

<img width="415" alt="image" src="https://github.com/user-attachments/assets/51b05ccc-e8ef-441b-ae5d-cac764b9b92d" />

## Features
- Support for extra stacked progress
- Text label inside or outside the bar
- Optional inner box shadow

## Usage

```dart
CustomLinearProgressBar(
  value: 0.8,
  extraValue: 0.12,
  label: 'Text In Bar',
  gradient: LinearGradient(
    colors: [Colors.purpleAccent, Colors.deepPurple],
  ),
  extraValueColor: Colors.orangeAccent,
  showShadowInside: true,
)
