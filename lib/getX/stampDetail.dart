import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Data {
  final String date;
  final String value;
  final String name;

  Data({required this.date, required this.value, required this.name});
}

class DataController extends GetxController {
  final RxList<Data> dataList = <Data>[
    Data(date: '2021 / 11 / 18', value: "1 個", name: 'スタンプを獲得しました。'),
    Data(date: '2021 / 11 / 17', value: "1 個", name: 'スタンプを獲得しました。'),
    Data(date: '2021 / 11 / 16', value: "1 個", name: 'スタンプを獲得しました。'),
    Data(date: '2021 / 11 / 15', value: "1 個", name: 'スタンプを獲得しました。'),
    Data(date: '2021 / 11 / 14', value: "1 個", name: 'スタンプを獲得しました。'),
    Data(date: '2021 / 11 / 13', value: "1 個", name: 'スタンプを獲得しました。'),
  ].obs;
}

class stampController extends GetxController {
  final RxList<Map<String, dynamic>> dataList = <Map<String, dynamic>>[
    {
      'date': '2021 / 11 / 18',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 17',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 16',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 15',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 14',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 13',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 12',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 11',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 18',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 17',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 16',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 15',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 14',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 13',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 12',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
    {
      'date': '2021 / 11 / 11',
      'value': '1 個"',
      'name': 'スタンプを獲得しました。',
    },
  ].obs;
}
