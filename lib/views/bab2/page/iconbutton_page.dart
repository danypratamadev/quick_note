import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/toast.dart';

class IconbuttonPage extends StatefulWidget {
  const IconbuttonPage({super.key});

  @override
  State<IconbuttonPage> createState() => _IconbuttonPageState();
}

class _IconbuttonPageState extends State<IconbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IconButton'.toUpperCase(),
          style: const TextStyle(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => AppToast.show(message: 'Default IconButton'),
                      icon: const Icon(
                        Icons.thumb_up_rounded,
                      ),
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton(
                      onPressed: () => AppToast.show(message: 'Default IconButton'),
                      icon: const Icon(
                        Icons.thumb_down_rounded,
                      ),
                      color: Colors.red,
                    ),
                    const SizedBox(width: 16.0,),
                    const IconButton(
                      onPressed: null, 
                      icon: Icon(
                        Icons.share_rounded,
                      ),
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.filled(
                      onPressed: () => AppToast.show(message: 'Filled IconButton'),
                      icon: const Icon(
                        Icons.thumb_up_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.indigo
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.filled(
                      onPressed: () => AppToast.show(message: 'Filled IconButton'),
                      icon: const Icon(
                        Icons.thumb_down_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.filled(
                      onPressed: null, 
                      icon: const Icon(
                        Icons.share_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.filled(
                      onPressed: () => AppToast.show(message: 'Filled IconButton with compact visual density'),
                      icon: const Icon(
                        Icons.thumb_up_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.indigo
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.filled(
                      onPressed: () => AppToast.show(message: 'Filled IconButton with compact visual density'),
                      icon: const Icon(
                        Icons.thumb_down_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.filled(
                      onPressed: null, 
                      icon: const Icon(
                        Icons.share_rounded,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.outlined(
                      onPressed: () => AppToast.show(message: 'IconButton with outline border'),
                      icon: const Icon(
                        Icons.thumb_up_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.indigo,
                        side: const BorderSide(
                          color: Colors.indigo,
                        )
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.outlined(
                      onPressed: () => AppToast.show(message: 'IconButton with outline border'),
                      icon: const Icon(
                        Icons.thumb_down_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(
                          color: Colors.red,
                        )
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.outlined(
                      onPressed: null, 
                      icon: const Icon(
                        Icons.share_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.outlined(
                      onPressed: () => AppToast.show(message: 'Outline IconButton with compact visual density'),
                      icon: const Icon(
                        Icons.thumb_up_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.indigo,
                        side: const BorderSide(
                          color: Colors.indigo,
                        )
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.outlined(
                      onPressed: () => AppToast.show(message: 'Outline IconButton with compact visual density'),
                      icon: const Icon(
                        Icons.thumb_down_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(
                          color: Colors.red,
                        )
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    const SizedBox(width: 16.0,),
                    IconButton.outlined(
                      onPressed: null, 
                      icon: const Icon(
                        Icons.share_rounded,
                      ),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}