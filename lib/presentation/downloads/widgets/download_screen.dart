
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';
class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        
        appBar: PreferredSize(preferredSize: const Size.fromHeight(50), child: AppBArWidget(title: 'Downloads',)),
        body: const Text('Screen Downloads'),
      ),
    );
  }
}