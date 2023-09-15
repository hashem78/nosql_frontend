import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

const kJsonViewTheme = JsonViewTheme(
  backgroundColor: Colors.transparent,
  defaultTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 16,
  ),
  closeIcon: Icon(
    CupertinoIcons.arrowtriangle_right_fill,
    size: 14,
  ),
  openIcon: Icon(
    CupertinoIcons.arrowtriangle_down_fill,
    size: 14,
  ),
  separator: Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Icon(
      Icons.arrow_right_alt_outlined,
      size: 20,
      color: Colors.black,
    ),
  ),
);

const kUseSSL = bool.fromEnvironment("USE_SSL", defaultValue: false);
const kCertificateAuthorityPath = String.fromEnvironment("CA_PATH", defaultValue: "");
