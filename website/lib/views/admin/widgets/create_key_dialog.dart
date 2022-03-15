import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/services/model.dart';
import 'package:website/state/notifier.dart';

class CreateAccessKeyDialog extends StatefulWidget {
  const CreateAccessKeyDialog({
    Key? key,
  }) : super(key: key);

  static Future<String?> show(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return const CreateAccessKeyDialog();
      },
    );
  }

  @override
  State<CreateAccessKeyDialog> createState() => _CreateAccessKeyDialogState();
}

class _CreateAccessKeyDialogState extends State<CreateAccessKeyDialog> {
  final TextEditingController email = TextEditingController();
  var isLoading = false;
  var read = true;
  var write = true;
  var admin = false;
  MicropubAccessKey? createdKey;

  @override
  Widget build(BuildContext context) {
    if (createdKey != null) {
      return AlertDialog(
        title: const Text('Success'),
        content: SelectableText(createdKey!.key),
        actions: [
          TextButton(
            child: const Text('Close'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
    }

    return AlertDialog(
      title: const Text('Create a new access key'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: email,
            decoration: const InputDecoration(hintText: "User's email"),
          ),
          CheckboxListTile(
            title: const Text('Download'),
            value: read,
            onChanged: (bool? value) {
              setState(() {
                read = !read;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Publish'),
            value: write,
            onChanged: (bool? value) {
              setState(() {
                write = !write;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Admin'),
            value: admin,
            onChanged: (bool? value) {
              setState(() {
                admin = !admin;
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        AnimatedBuilder(
            animation: email,
            builder: (context, _) {
              return TextButton(
                child: const Text('Create'),
                onPressed:
                    email.text.trim().isEmpty || (!write && !read && !admin)
                        ? null
                        : () async {
                            final notifier = context.read<AppStateNotifier>();
                            setState(() {
                              isLoading = true;
                            });
                            try {
                              final newKey = await notifier.createAccessKey(
                                email.text.trim(),
                                read,
                                write,
                                admin,
                              );
                              setState(() {
                                createdKey = newKey;
                              });
                            } finally {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            unawaited(notifier.refreshAdmin());
                          },
              );
            }),
      ],
    );
  }
}
