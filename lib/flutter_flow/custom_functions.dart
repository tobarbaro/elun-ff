import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<bool> onlyFavorites(bool onlyFavs) {
  List<bool> l = [];
  l.add(true);
  if (onlyFavs) return l;
  l.add(false);
  return l;
}

DateTime setTimeForDateTime(
  DateTime date,
  bool isEndDate,
) {
  if (isEndDate) {
    // Fecha final: poner hora 23:59:59
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  } else {
    // Fecha inicial: poner hora 00:00:00
    return DateTime(date.year, date.month, date.day, 0, 0, 0);
  }
}

DateTime addOrSubtractDays(
  DateTime date,
  int days,
) {
  return date.add(Duration(days: days));
}
