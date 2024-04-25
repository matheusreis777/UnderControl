import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? dataParaString(DateTime? dataParam) {
  // convert param dataParam for string
  if (dataParam == null) {
    return null;
  } else {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dataParam);
  }
}

String? mascaraValorReal(double? valor) {
  // pt-br value mask from a value
// This function takes a double value and returns a string with the Brazilian Real currency format.
  double? value = valor;
  if (value == null) {
    return null;
  } else {
    final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return formatter.format(value);
  }
}

DateTime? dataLocal(DateTime? data) {
  // adjust date and time with local time zone
  if (data == null) {
    return null;
  } else {
    final local = data.toLocal();
    return local;
  }
}
