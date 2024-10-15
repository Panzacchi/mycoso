import 'package:flutter/material.dart';
import 'package:mycoso/widgets/expenses_list/expenses_list.dart';
import 'package:mycoso/models/expense.dart';
import 'package:mycoso/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: ' Flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: ' Flutter license',
      amount: 22.97665,
      date: DateTime.now(),
      category: Category.food,
    )
  ];

  void _openAddExpenseOverlay(){
      showModalBottomSheet(isScrollControlled: true, 
      context: context, 
      builder: (ctx)=> NewExpense(onAddExpense: _addExpense));
  }

  void _addExpense(Expense expense) {
    setState(() {
    _registeredExpenses.add(expense);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses tracker 2000"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay,
          icon: const Icon(Icons.add)
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("the charter"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
