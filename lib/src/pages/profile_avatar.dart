// ignore_for_file: unnecessary_new

import 'dart:math';
import 'package:anca/src/pages/my_paint.dart';
import 'package:anca/src/pages/svg_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiavatar/multiavatar.dart';
import './my_paint.dart';
import './svg_wrapper.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar>
    with AutomaticKeepAliveClientMixin {
  String svgCode = multiavatar('X-SLAYER');
  DrawableRoot? svgRoot;
  TextEditingController randomField = TextEditingController();

  _generateSvg() async {
    return SvgWrapper(svgCode).generateLogo().then((value) {
      setState(() {
        svgRoot = value!;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _generateSvg();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade900,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _avatarPreview(),
                  const SizedBox(height: 35.0),
                  _textField(),
                  const SizedBox(height: 40.0),
                  const Text(
                    "En total, es posible generar hasta 12 billones de avatars.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white60, fontSize: 17.0),
                  ),
                  const SizedBox(height: 25.0),
                  _randomButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatarPreview() {
    return Container(
      height: 180.0,
      width: 180.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: svgRoot == null
          ? const SizedBox.shrink()
          : CustomPaint(
              painter: MyPainter(svgRoot!, const Size(180.0, 180.0)),
              child: Container(),
            ),
    );
  }

  Widget _textField() {
    return TextField(
      controller: randomField,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
      onChanged: (field) {
        if (field.isNotEmpty) {
          setState(() {
            svgCode = multiavatar(field);
          });
          // dev.log(svgCode);
        } else {
          setState(() {
            svgCode = multiavatar('X-SLAYER');
          });
        }
        _generateSvg();
      },
      decoration: const InputDecoration(
        fillColor: Colors.white10,
        border: InputBorder.none,
        filled: true,
        hintText: "type anything here",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _randomButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.white10,
        child: IconButton(
            onPressed: () {
              var l = List.generate(12, (_) => new Random().nextInt(100));
              randomField.text = l.join();
              setState(() {
                svgCode = multiavatar(randomField.text);
              });
              _generateSvg();
            },
            icon: const Icon(
              Icons.refresh,
              size: 30.0,
              color: Colors.white60,
            )),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
