# Flutter Custom Linear Progress Bar

A customizable and animated linear progress bar for Flutter.

<img width="415" alt="image" src="https://github.com/user-attachments/assets/51b05ccc-e8ef-441b-ae5d-cac764b9b92d" />

## Features

- Smooth animation from 0 to value
- Support for extra stacked progress
- Text label inside or outside the bar
- Custom colors, gradients, radius
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
