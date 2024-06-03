import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/result/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData['user-answer'] == itemData['correct-answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrect: isCorrect,
          index: itemData['question-index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['user-answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 103, 0, 124),
              ),
            ),
            Text(
              itemData['correct-answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 82, 72),
              ),
            )
          ],
        ))
      ],
    );
  }
}
