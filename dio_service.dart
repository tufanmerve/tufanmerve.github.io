import 'package:bacik/202/models/ex_dio_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ExDioPage extends StatefulWidget {
  const ExDioPage({Key? key}) : super(key: key);

  @override
  State<ExDioPage> createState() => _ExDioPageState();
}

class _ExDioPageState extends State<ExDioPage> {
  List<DioModel>? _items;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/users/1/todos";

  @override
  void initState() {
    super.initState();
    getDio();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<void> getDio() async {
    try {
      final response = await _dio.get(_baseUrl);
      if (response.statusCode == 200) {
        final _datas = response.data;
        setState(() {
          _items = _datas.map((e) => DioModel.fromJson(e)).toList();
        });
      } else {
        print('${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: _items?.length ?? 0,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(_items?[index].title ?? 'how'),
                  subtitle: Text('hello'),
                ),
              );
            }));
  }
}
