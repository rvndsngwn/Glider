import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Icon(
              FluentIcons.error_circle_24_filled,
              size: Theme.of(context).textTheme.bodyText2.fontSize * 2,
            ),
            const SizedBox(height: 12),
            Text(
              "It doesn't look like anything to me",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
