import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static User myUser = User(
    image:
        "https://media-exp1.licdn.com/dms/image/C4D03AQF9V3xx-UkzZw/profile-displayphoto-shrink_200_200/0/1646730467145?e=1659571200&v=beta&t=d4tHa604AGtG2pcglyOKQkVCvSHuHr45kcVH7jS5suI",
    name: 'Test Test',
    email: 'example@gmail.com',
    phone: '(208) 206-5039',
    aboutMeDescription:
        'I am a student.'
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}

class SharedPreferences {
  static getInstance() {}

  setString(String keyUser, String json) {}

  getString(String keyUser) {}
}