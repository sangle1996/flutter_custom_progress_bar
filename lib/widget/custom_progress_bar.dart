import 'package:flutter/material.dart';

enum TitleStyle {
  onLeft,
  onTop,
}

const double defaultHeight = 32;

const Color mainColor2 = Color(0xFF9A8EFF);
const Color mainColor1 = Color(0xFFB7B2FF);

const Color plusColor2 = Color(0xFFFD9495);
const Color plusColor1 = Color(0xFFFED2BB);

class CustomProgressBar extends StatelessWidget {
  final double progress;
  final double height;
  final TitleStyle titleStyle;
  final String? textInBar;
  final String? title;
  final double? plusProgress;

  const CustomProgressBar({
    super.key,
    required this.progress,
    this.textInBar,
    this.titleStyle = TitleStyle.onLeft,
    this.height = defaultHeight,
    this.plusProgress,
    this.title,
  }) : assert(
          progress >= 0 &&
                  progress <= 1 &&
                  (plusProgress != null && (plusProgress + progress) <= 1) ||
              plusProgress == null,
          'Progress must be between 0 and 1 and if plusProgress is not null, the sum of progress and plusProgress must be less than or equal to 1',
        );

  double get _fullPlusProgress {
    if (plusProgress != null) {
      return progress + plusProgress!;
    }
    return progress;
  }

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return _progressBar();
    }

    switch (titleStyle) {
      case TitleStyle.onTop:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _labelCommonWidget(title!),
            const SizedBox(height: 8),
            _progressBar(),
          ],
        );
      default:
        return Row(
          children: [
            _labelCommonWidget(title!),
            const SizedBox(width: 8),
            Expanded(child: _progressBar()),
          ],
        );
    }
  }

  _labelCommonWidget(String value, {Color? textColor}) => Text(
        value,
        style: TextStyle(
          color: textColor ?? Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      );

  _progressBar() {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                // height: widget.height,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      height: height - 4.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    if (plusProgress != null)
                      FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: _fullPlusProgress,
                        child: _progressSegment(
                          plusColor1,
                          plusColor2,
                          height,
                          leftRadius: const Radius.circular(20),
                          rightRadius: const Radius.circular(20),
                        ),
                      ),
                    FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: progress,
                      child: _progressSegment(
                          mainColor1, mainColor2, height,
                          leftRadius: const Radius.circular(20),
                          rightRadius: Radius.circular(
                            plusProgress != null ? 0 : 20,
                          )),
                    ),
                  ],
                ),
              ),
              if (textInBar != null) _textInBar(),
            ],
          ),
        ),
        _valuesWidget(),
      ],
    );
  }

  _valuesWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 8,
        ),
        _labelCommonWidget(
          '${(progress * 100).toStringAsFixed(0)}%',
        ),
        const SizedBox(
          width: 8,
        ),
        if (plusProgress != null)
          _labelCommonWidget(
            '+ ${(plusProgress! * 100).toStringAsFixed(0)}%',
            textColor: plusColor1,
          ),
      ],
    );
  }

  _progressSegment(
    Color color1,
    Color color2,
    double height, {
    Radius leftRadius = const Radius.circular(24),
    Radius rightRadius = const Radius.circular(24),
  }) {
    return Column(
      children: [
        Container(
          height: height / 2,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.only(
              topLeft: leftRadius,
              topRight: rightRadius,
            ),
          ),
        ),
        Container(
          height: height / 2,
          decoration: BoxDecoration(
            color: color2,
            borderRadius: BorderRadius.only(
              bottomLeft: leftRadius,
              bottomRight: rightRadius,
            ),
          ),
        ),
      ],
    );
  }

  _textInBar() {
    return SizedBox(
        height: height,
        child: Center(child: _labelCommonWidget(textInBar!)));
  }
}
