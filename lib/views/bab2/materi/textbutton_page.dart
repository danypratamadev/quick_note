import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/toast.dart';

class TextbuttonPage extends StatefulWidget {
  const TextbuttonPage({super.key});

  @override
  State<TextbuttonPage> createState() => _TextbuttonPageState();
}

class _TextbuttonPageState extends State<TextbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextButton',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => AppToast.show(message: 'Default TextButton'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ), 
                  child: const Text(
                    'Click Me'
                  )
                ),
                const SizedBox(height: 16.0,),
                TextButton.icon(
                  onPressed: () => AppToast.show(message: 'TextButton with default icon alignment'),
                  icon: const Icon(
                    Icons.ads_click_rounded
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ), 
                  label: const Text(
                    'Click Me'
                  ),
                ),
                const SizedBox(height: 16.0,),
                TextButton.icon(
                  onPressed: () => AppToast.show(message: 'TextButton with right icon alignment'), 
                  icon: const Icon(
                    Icons.share_rounded
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ), 
                  label: const Text(
                    'Share'
                  ),
                  iconAlignment: IconAlignment.end,
                ),
                const SizedBox(height: 16.0,),
                TextButton.icon(
                  onPressed: () => AppToast.show(message: 'TextButton with custom icon color'), 
                  icon: const Icon(
                    Icons.ads_click_rounded
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                    iconColor: Colors.orange
                  ), 
                  label: const Text(
                    'Click Me'
                  ),
                ),
                const SizedBox(height: 16.0,),
                TextButton.icon(
                  onPressed: () => AppToast.show(message: 'TextButton with custom icon color'), 
                  icon: const Icon(
                    Icons.share_rounded
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                    iconColor: Colors.orange
                  ), 
                  label: const Text(
                    'Share'
                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}