import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as q;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class EditSchemaScreen extends StatefulHookConsumerWidget {
  const EditSchemaScreen({super.key, this.initialText});

  final String? initialText;

  @override
  ConsumerState<EditSchemaScreen> createState() => _EditSchemaScreenState();
}

class _EditSchemaScreenState extends ConsumerState<EditSchemaScreen> {
  late final q.QuillController _controller;

  @override
  void initState() {
    print(widget.initialText);
    super.initState();
    if (widget.initialText == null) {
      _controller = q.QuillController(
        document: q.Document(),
        selection: const TextSelection(baseOffset: 0, extentOffset: 0),
      );
    } else {
      _controller = q.QuillController(
        document: q.Document()..insert(0, widget.initialText),
        selection: const TextSelection(baseOffset: 0, extentOffset: 0),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Schema'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          final text = _controller.document.toPlainText();
          try {
            final decodedJson = jsonDecode(text);
            Navigator.pop(context, decodedJson);
          } catch (e) {
            ref.read(scaffoldMessengerKeyProvider).currentState?.showSnackBar(
                  const SnackBar(
                    content: Text('Invalid Json Schema'),
                  ),
                );
          }
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: q.QuillEditor.basic(
              controller: _controller,
              padding: const EdgeInsets.only(left: 16.0),
              readOnly: false, // true for view only mode
            ),
          ),
        ],
      ),
    );
  }
}
