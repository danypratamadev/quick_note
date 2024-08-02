import 'dart:developer';

import 'package:flutter/material.dart';

class ElevatedbuttonPage extends StatefulWidget {
  const ElevatedbuttonPage({super.key});

  @override
  State<ElevatedbuttonPage> createState() => _ElevatedbuttonPageState();
}

class _ElevatedbuttonPageState extends State<ElevatedbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ElevatedButton Widget'
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => log('Button clicked'), 
                  child: const Text(
                    'Click Me'
                  )
                ),
                const SizedBox(height: 16.0,),
                ElevatedButton(
                  onPressed: () => log('Button clicked'), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white
                  ),
                  child: const Text(
                    'Click Me'
                  )
                ),
                const SizedBox(height: 16.0,),
                ElevatedButton.icon(
                  onPressed: () => log('Button clicked'), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                  ),
                  icon: const Icon(
                    Icons.play_arrow_rounded
                  ),
                  label: const Text(
                    'Click Me'
                  )
                ),
                const SizedBox(height: 16.0,),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    onPressed: () => log('Button clicked'), 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                    ),
                    icon: const Icon(
                      Icons.play_arrow_rounded
                    ),
                    label: const Text(
                      'Click Me'
                    )
                  ),
                ),
                const SizedBox(height: 16.0,),
                SizedBox(
                  width: double.maxFinite,
                  height: 48.0,
                  child: ElevatedButton.icon(
                    onPressed: () => log('Button clicked'), 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      )
                    ),
                    icon: const Icon(
                      Icons.thumb_up_rounded
                    ),
                    label: const Text(
                      'Like'
                    )
                  ),
                ),
                const SizedBox(height: 16.0,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 48.0,
                        child: ElevatedButton.icon(
                          onPressed: () => log('Button clicked'), 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                            )
                          ),
                          icon: const Icon(
                            Icons.thumb_up_rounded
                          ),
                          label: const Text(
                            'Like'
                          )
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    Expanded(
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 48.0,
                        child: ElevatedButton.icon(
                          onPressed: () => log('Button clicked'), 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                            )
                          ),
                          icon: const Icon(
                            Icons.share_rounded
                          ),
                          label: const Text(
                            'Share'
                          )
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}