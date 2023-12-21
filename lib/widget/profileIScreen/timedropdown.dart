import 'package:flutter/material.dart';

class DropDownTimeButton extends StatefulWidget {
  const DropDownTimeButton({super.key});

  @override
  State<DropDownTimeButton> createState() => _DropDownTimeButtonState();
}

class _DropDownTimeButtonState extends State<DropDownTimeButton> {
  List<String> generateTimeList() {
    List<String> timeList = [];

    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        String hourString = hour.toString().padLeft(2, '0');
        String minuteString = minute.toString().padLeft(2, '0');
        String time = '$hourString:$minuteString';
        timeList.add(time);
      }
    }

    return timeList;
  }

  @override
  @override
  Widget build(BuildContext context) {
    List<String> timeList = generateTimeList();
    String selectedTime = '10:00';
    return Center(
      child: DropdownButton<String>(
        value: selectedTime,
        onChanged: (String? newValue) {
          setState(() {
            selectedTime = newValue!;
          });
        },
        items: timeList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownTimeButton2 extends StatefulWidget {
  const DropDownTimeButton2({super.key});

  @override
  State<DropDownTimeButton2> createState() => _DropDownTimeButton2State();
}

class _DropDownTimeButton2State extends State<DropDownTimeButton2> {
  List<String> generateTimeList() {
    List<String> timeList = [];

    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        String hourString = hour.toString().padLeft(2, '0');
        String minuteString = minute.toString().padLeft(2, '0');
        String time = '$hourString:$minuteString';
        timeList.add(time);
      }
    }

    return timeList;
  }

  @override
  @override
  Widget build(BuildContext context) {
    List<String> timeList = generateTimeList();
    String selectedTime = '22:00';
    return Center(
      child: DropdownButton<String>(
        value: selectedTime,
        onChanged: (String? newValue) {
          setState(() {
            selectedTime = newValue!;
          });
        },
        items: timeList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownTimeButton3 extends StatefulWidget {
  const DropDownTimeButton3({super.key});

  @override
  State<DropDownTimeButton3> createState() => _DropDownTimeButton3State();
}

class _DropDownTimeButton3State extends State<DropDownTimeButton3> {
  List<String> generateTimeList() {
    List<String> timeList = [];

    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        String hourString = hour.toString().padLeft(2, '0');
        String minuteString = minute.toString().padLeft(2, '0');
        String time = '$hourString:$minuteString';
        timeList.add(time);
      }
    }

    return timeList;
  }

  @override
  @override
  Widget build(BuildContext context) {
    List<String> timeList = generateTimeList();
    String selectedTime = '11:00';
    return Center(
      child: DropdownButton<String>(
        value: selectedTime,
        onChanged: (String? newValue) {
          setState(() {
            selectedTime = newValue!;
          });
        },
        items: timeList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class dropDowntimeButton4 extends StatefulWidget {
  const dropDowntimeButton4({super.key});

  @override
  State<dropDowntimeButton4> createState() => _dropDowntimeButton4State();
}

class _dropDowntimeButton4State extends State<dropDowntimeButton4> {
  List<String> generateTimeList() {
    List<String> timeList = [];

    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        String hourString = hour.toString().padLeft(2, '0');
        String minuteString = minute.toString().padLeft(2, '0');
        String time = '$hourString:$minuteString';
        timeList.add(time);
      }
    }

    return timeList;
  }

  @override
  @override
  Widget build(BuildContext context) {
    List<String> timeList = generateTimeList();
    String selectedTime = '15:00';
    return Center(
      child: DropdownButton<String>(
        value: selectedTime,
        onChanged: (String? newValue) {
          setState(() {
            selectedTime = newValue!;
          });
        },
        items: timeList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
