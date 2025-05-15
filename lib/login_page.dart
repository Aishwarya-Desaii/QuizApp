import 'package:flutter/material.dart';
import 'category_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _errorMessage = '';
  final Map<String, String> _users = {
    'test@example.com': 'password123', // Example user data
  };

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Check if the fields are empty
    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'Please enter both email and password.';
      });
      return;
    }

    // Check if the email and password are valid
    if (_users.containsKey(email) && _users[email] == password) {
      // Successful login, navigate to CategoryPage
      setState(() {
        _errorMessage = ''; // Clear any error messages
      });
    } else {
      // Invalid credentials, but still navigate to CategoryPage
      setState(() {
        _errorMessage = 'Invalid email or password. Please try again!';
      });
    }

    // Navigate to CategoryPage regardless of login status
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CategoryPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: const Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
