import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glider/models/item.dart';
import 'package:glider/widgets/reply/reply_body.dart';

class ReplyPage extends HookWidget {
  const ReplyPage({Key key, this.replyToItem}) : super(key: key);

  final Item replyToItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reply'),
      ),
      body: ReplyBody(replyToItem: replyToItem),
    );
  }
}