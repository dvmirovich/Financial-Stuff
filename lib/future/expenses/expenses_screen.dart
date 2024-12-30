import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/future/expenses/widgets/expenses_widget.dart';

class ExpensesScreen extends StatefulWidget {

  ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  Dio dio = Dio();

  List<dynamic> categoriesList = [];

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  Future<void> fetchCategories () async {
    try {
      final response = await dio.get(
        'https://financial-stuff-fe92a-default-rtdb.firebaseio.com/categories.json',
        options: Options(
            headers: {
              'Content-Type': 'application/json'
            }
        ),
      );

      if(response.statusCode == 200) {
        categoriesList = response.data['data'];
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpensesWidget(
      categories: categoriesList,
    );
  }
}
