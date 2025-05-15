import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class SubCategoryPage extends StatelessWidget {
  final String category;

  const SubCategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> subCategories = {
      'Coding': ['HTML', 'CSS', 'Java', 'PHP', 'MySQL', 'Flutter', 'Python'],
      'Sports': [
        'Cricket',
        'Hockey',
        'Football',
        'Kabaddi',
        'Chess',
        'Kho-Kho',
        'Olympic Games'
      ],
      'Maths': ['Easy', 'Average', 'Hard'],
      'English': ['Easy', 'Average', 'Hard'],
    };

    final List<String> subcategoryList = subCategories[category] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Subcategories'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 8.0,
        shadowColor: Colors.black.withOpacity(0.3),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent, // Light blue for freshness
              Colors.purpleAccent, // Purple for elegance and contrast
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: subcategoryList.length,
            itemBuilder: (context, index) {
              final subCategory = subcategoryList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          category: category,
                          subCategory: subCategory,
                        ),
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.deepPurpleAccent,
                          Colors.orangeAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        subCategory,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
