import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:micropub/client.dart';
import 'package:website/state/notifier.dart';

class RevokeKeyDialog extends StatefulWidget {
  const RevokeKeyDialog({
    Key? key,
    required this.accessKey,
  }) : super(key: key);

  final MicropubAccessKey accessKey;

  static Future<void> show(BuildContext context, MicropubAccessKey accessKey) {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return RevokeKeyDialog(accessKey: accessKey);
      },
    );
  }

  @override
  State<RevokeKeyDialog> createState() => _RevokeKeyDialogState();
}

class _RevokeKeyDialogState extends State<RevokeKeyDialog> {
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content:
          Text('You\'re about to delete "${widget.accessKey.email}"\'s key.'),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Delete'),
          onPressed: () async {
            final notifier = context.read<AppStateNotifier>();
            setState(() {
              isLoading = true;
            });
            try {
              await notifier.revokeAccessKey(widget.accessKey);
              Navigator.pop(context);
            } catch (e) {
              setState(() {
                isLoading = false;
              });
            }
            unawaited(notifier.refreshAdmin());
          },
        )
      ],
    );
  }
}
