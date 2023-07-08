import 'package:flutter/widgets.dart';
import 'package:my_app/models/expense.dart';
import 'package:my_app/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) => ExpensesItem(expenses[idx]),
    );
  }
}
