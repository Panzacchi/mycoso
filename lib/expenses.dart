
import 'package:flutter/material.dart';
import 'package:mycoso/models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<StatefulWidget> createState() {

    return _ExpensesState();
  }

}


class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [
    Expense(title:' Flutter course', amount: 19.99, date: DateTime.now(),category: Category.work,),
    Expense(title:' Flutter license', amount: 22.99, date: DateTime.now(),category: Category.food,)
  ];


  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Column(
      children: [
        Text("the charter"),
        Text('expenses liste')
      ],
    ),);
  }
}