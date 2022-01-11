import 'package:get/get.dart';

class DateTimeState {
  final List<DateTime> _datetime = List<DateTime>.empty().obs;

  List<DateTime> get dateTimeList => _datetime;

  add_date(DateTime date) {
    _datetime.add(date);
  }
}
