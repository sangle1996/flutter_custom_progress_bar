import 'package:flutter/material.dart';
import 'widget/custom_progress_bar.dart';

class ProgressDemoPage extends StatelessWidget {
  const ProgressDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomProgressBar(
                progress: 0.8,
                height: 60,
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.8,
                plusProgress: 0.12,
                height: 60,
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.3,
                plusProgress: 0.37,
                height: 60,
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0,
                height: 60,
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.8,
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.6,
                plusProgress: 0.2,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onTop,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.6,
                plusProgress: 0.2,
                height: 60,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onTop,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.6,
                plusProgress: 0.2,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.2,
                plusProgress: 0.5,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.8,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
              SizedBox(height: 20),
              CustomProgressBar(
                progress: 0.8,
                height: 60,
                textInBar: 'Text In Bar',
                title: 'Progress Bar',
                titleStyle: TitleStyle.onLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
