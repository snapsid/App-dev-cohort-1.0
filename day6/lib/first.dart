import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';

class MyFirst extends StatefulWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  State<MyFirst> createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
  //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

  getDataFromGPT(prompt) async {
    OpenAI.apiKey = "enter your api key";

    print("prompt $prompt");
    OpenAIChatCompletionModel chatCompletion =
        await OpenAI.instance.chat.create(model: "gpt-3.5-turbo", messages: [
      OpenAIChatCompletionChoiceMessageModel(
        content: "$prompt",
        role: OpenAIChatMessageRole.user,
      ),
    ]);

    setState(() {
      messageList.add([chatCompletion.choices.first.message.content, false]);
    });

    print(chatCompletion.choices.first.message.content);
  }

  TextEditingController controller1 = TextEditingController();

  var messageList = [];

  chatBubble1(message, isSender) {
    return BubbleSpecialOne(
      text: '$message',
      isSender: isSender,
      color: Colors.purple.shade100,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.purple,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPEN AI"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
                    child: ListView.builder(
                        itemCount: messageList.length,
                        itemBuilder: (context, index) {
                          return chatBubble1(
                              messageList[index][0], messageList[index][1]);
                        }))),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                          hintText: "Enter prompt",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        print(controller1.text);
                        setState(() {
                          messageList.add(["${controller1.text}", true]);
                        });
                        print(messageList);
                        getDataFromGPT(controller1.text);
                        controller1.clear();
                      },
                      icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
