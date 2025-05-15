import 'package:flutter/material.dart';
import 'sub_category_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorA;
  late Animation<Color?> _colorB;
  late Animation<Color?> _textColor;
  late Animation<double> _imageScale;

  final List<String> categories = const [
    'Coding',
    'Sports',
    'Maths',
    'English',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat(reverse: true);

    _colorA = ColorTween(
      begin: const Color(0xFF1E3C72), // Navy Blue
      end: const Color(0xFF2A5298), // Blueish Gradient
    ).animate(_controller);

    _colorB = ColorTween(
      begin: const Color(0xFF1E3C72),
      end: const Color(0xFFFF6E7F), // Pink Accent
    ).animate(_controller);

    _textColor = ColorTween(
      begin: Colors.black87,
      end: Colors.deepPurple,
    ).animate(_controller);

    _imageScale = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void navigateToSubCategory(String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SubCategoryPage(category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Select Category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4,
                    color: Colors.black45,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [_colorA.value!, _colorB.value!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
              child: Column(
                children: [
                  Transform.scale(
                    scale: _imageScale.value,
                    child: Image.asset('lib/assets/images.png', height: 130),
                  ),
                  const SizedBox(height: 30),
                  ...categories.map((cat) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.9),
                            foregroundColor: _textColor.value!,
                            minimumSize: const Size.fromHeight(60),
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                Shadow(
                                  blurRadius: 2,
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () => navigateToSubCategory(cat),
                          child: Text(cat),
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
