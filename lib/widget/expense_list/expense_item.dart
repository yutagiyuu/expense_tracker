import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  "\$ ${expense.amount.toStringAsFixed(2)}",
                  style: GoogleFonts.poppins(),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIocns[expense.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      expense.formattedDate,
                      style: GoogleFonts.lato(),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
