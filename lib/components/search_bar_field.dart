import 'package:flutter/material.dart';
import 'package:google_clone/components/misc.dart';

import 'package:google_clone/utils/push.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SearchBarField extends StatefulWidget {
  final String query;

  const SearchBarField({super.key, required this.query});

  @override
  State<SearchBarField> createState() => _SearchBarFieldState();
}

class _SearchBarFieldState extends State<SearchBarField> {
  final SpeechToText _speechToText = SpeechToText();
  bool isListening = false;
  bool speechEnabled = false;
  String listenendText = "";

  TextEditingController textController = TextEditingController();

  void _initSpeech() async {
    speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    setState(() {
      isListening = true;
      listenendText = "";
    });
    await _speechToText.listen(onResult: (result) {
      setState(() {
        listenendText = result.recognizedWords;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  @override
  Widget build(BuildContext context) {
    textController.text = widget.query;

    return isListening
        ? SimpleDialog(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.white,
                child: const Image(
                  image: AssetImage("assets/images/Google-Mic-Icon.png"),
                ),
              ),
              Text(
                listenendText,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              TextButton(
                  onPressed: () {
                    _speechToText.stop();
                    setState(() {
                      isListening = false;
                      textController.text = listenendText;
                      listenendText = "";
                    });
                    pushToSearchPage(
                        context: context, query: textController.text);
                    listenendText = "";
                  },
                  child: const Text("I'm Done",
                      style: TextStyle(color: Colors.black)))
            ],
          )
        : SizedBox(
            width: MediaQuery.of(context).size.width > 700
                ? MediaQuery.of(context).size.width / 2
                : MediaQuery.of(context).size.width / 1.5,
            child: TextField(
              controller: textController,
              onSubmitted: (String value) {
                if (value != "" || value != " ") {
                  pushToSearchPage(context: context, query: value);
                }
              },
              decoration: inputDecoration(_startListening),
            ),
          );
  }
}
