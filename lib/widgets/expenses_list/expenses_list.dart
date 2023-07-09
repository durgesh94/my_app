import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/models/expense.dart';
import 'package:my_app/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) => Dismissible(
        key: ValueKey(expenses[idx]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: Theme.of(context).cardTheme.margin,
        ),
        onDismissed: (direction) => {
          onRemoveExpense(expenses[idx]),
        },
        child: ExpensesItem(expenses[idx]),
      ),
    );
  }
}
