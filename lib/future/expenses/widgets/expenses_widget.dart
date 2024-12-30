import 'package:flutter/material.dart';

class ExpensesWidget extends StatelessWidget {
  List<dynamic> categories;

  ExpensesWidget({
    super.key,
    required this.categories
  });

  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Расходы',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25
            ),
          ),
          Divider(
            height: 30,
          ),
          Row(
            children: [
              const Text('Категория:'),
              const SizedBox(width: 20),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    focusColor: Colors.green.shade700,
                    hoverColor: Colors.green,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700),
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  value: _selectedCategory,
                  onChanged: (value) {
                    _selectedCategory = value;
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Комуналка',
                      child: Text('Комуналка'),
                    ),
                    DropdownMenuItem(
                      value: 'Кредиты',
                      child: Text('Кредиты'),
                    ),
                    DropdownMenuItem(
                      value: 'Фитнес',
                      child: Text('Фитнес'),
                    ),
                    DropdownMenuItem(
                      value: 'Обучение',
                      child: Text('Обучение'),
                    ),
                    DropdownMenuItem(
                      value: 'Подарки',
                      child: Text('Подарки'),
                    ),
                    DropdownMenuItem(
                      value: 'Туса',
                      child: Text('Туса'),
                    ),
                    DropdownMenuItem(
                      value: 'Жена',
                      child: Text('Жена'),
                    ),
                    DropdownMenuItem(
                      value: 'Еда',
                      child: Text('Еда'),
                    ),
                    DropdownMenuItem(
                      value: 'Такси',
                      child: Text('Такси'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
