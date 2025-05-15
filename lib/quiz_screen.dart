import 'package:flutter/material.dart';
import 'question.dart'; // <-- Make sure this contains questionsData
import 'dart:math';

class QuizScreen extends StatefulWidget {
  final String category;
  final String subCategory;

  const QuizScreen({
    super.key,
    required this.category,
    required this.subCategory,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  int score = 0;
  bool isAnswered = false;

  late AnimationController _controller;
  late Animation<Color?> _backgroundColor;
  late Animation<Color?> _buttonColor;
  late Animation<Color?> _questionBoxColor; // Added for question box background

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    // Background color animation
    _backgroundColor = ColorTween(
      begin: Colors.grey[100], // Light gray background
      end: Colors.grey[200], // Slightly darker gray for gradient effect
    ).animate(_controller);

    // Button color animation for default state (blue to green/red on answer)
    _buttonColor = ColorTween(
      begin: Colors.blue[300], // Default blue
      end: Colors.green[600], // Correct answer green
    ).animate(_controller);

    // Question box background animation
    _questionBoxColor = ColorTween(
      begin: Colors.orange[100], // Light orange for the question box
      end: Colors.orange[300], // Slightly darker orange for gradient effect
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void restartQuiz() {
    setState(() {
      currentIndex = 0;
      score = 0;
      isAnswered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = questionsData[widget.category]?[widget.subCategory] ?? [];

    if (questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('${widget.subCategory} Quiz'),
          backgroundColor:
              const Color.fromARGB(255, 66, 66, 66), // Charcoal gray AppBar
        ),
        body: const Center(
          child: Text('No questions available for this quiz.'),
        ),
      );
    }

    final question = questions[currentIndex];

    return AnimatedBuilder(
      animation: _backgroundColor,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: _backgroundColor.value,
          appBar: AppBar(
            title: Text('${widget.subCategory} Quiz'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(
                255, 154, 245, 237), // Charcoal gray AppBar
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Question ${currentIndex + 1}/${questions.length}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87, // Dark gray for readability
                  ),
                ),
                const SizedBox(height: 20),

                // Question box with animated background
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: _questionBoxColor
                        .value, // Animated color for question box
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Colors.orange[800]!,
                        width: 2.0), // Orange border
                  ),
                  child: Text(
                    question.questionText,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold, // Bold effect for question
                      color: Colors.black87, // Dark gray for question text
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                ...List.generate(question.options.length, (index) {
                  final isCorrect = index == question.correctIndex;
                  final isSelected =
                      isAnswered && index == question.correctIndex;
                  final color = isAnswered
                      ? (isSelected
                          ? Colors.green[600] // Soft Green for correct answer
                          : index == question.correctIndex
                              ? Colors.green[600]
                              : Colors
                                  .red[600]) // Muted Red for incorrect answer
                      : _buttonColor
                          .value; // Smooth transition color for buttons

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: color,
                        border: Border.all(
                          color: color == Colors.blue[300]
                              ? Colors.blueAccent
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: isAnswered
                            ? null
                            : () {
                                setState(() {
                                  isAnswered = true;
                                  if (isCorrect) score++;
                                });

                                Future.delayed(const Duration(seconds: 1), () {
                                  if (currentIndex + 1 < questions.length) {
                                    setState(() {
                                      currentIndex++;
                                      isAnswered = false;
                                    });
                                  } else {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ResultScreen(
                                          score: score,
                                          total: questions.length,
                                          onRestart: restartQuiz,
                                        ),
                                      ),
                                    );
                                  }
                                });
                              },
                        child: Text(
                          question.options[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight:
                                FontWeight.bold, // Bold for answer options
                            color: Colors.white, // White text for contrast
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;
  final VoidCallback onRestart;

  const ResultScreen({
    super.key,
    required this.score,
    required this.total,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
        centerTitle: true,
        backgroundColor: Colors.grey[800], // Charcoal gray AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You scored $score out of $total!',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Dark gray for result text
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to subcategories
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 138, 233, 236), // Muted gray for back button
                minimumSize: const Size(200, 50),
              ),
              child: const Text('Back to Subcategories'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                onRestart();
                Navigator.pop(context); // Restart logic will update state
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 121, 216, 219), // Teal for restart button
                minimumSize: const Size(200, 50),
              ),
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
