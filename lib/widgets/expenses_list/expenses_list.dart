import 'package:flutter/material.dart';
import 'package:mycoso/models/expense.dart';
import 'package:mycoso/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget{
    const ExpensesList({super.key, required this.expenses, });

    final List<Expense> expenses;


    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index)=> ExpensesItem(expenses[index]));
  }
}