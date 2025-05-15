// question.dart
class Question {
  final String questionText;
  final List<String> options;
  final int correctIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctIndex,
  });
}

final Map<String, Map<String, List<Question>>> questionsData = {
  'Coding': {
    'HTML': [
      Question(
        questionText: 'What does HTML stand for?',
        options: [
          'HyperText Markup Language',
          'Home Tool Markup Language',
          'Hyperlinks and Text Markup Language',
          'Hyperlinking Textual Management Language',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Who is making the Web standards?',
        options: [
          'Mozilla',
          'Microsoft',
          'The World Wide Web Consortium',
          'Google',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Choose the correct HTML element for the largest heading:',
        options: [
          '<head>',
          '<h1>',
          '<h6>',
          '<heading>',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'What is the correct HTML element for inserting a line break?',
        options: [
          '<break>',
          '<br>',
          '<lb>',
          '<line>',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which character is used to indicate an end tag?',
        options: [
          '*',
          '/',
          '<',
          '^',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the correct HTML for adding a background color?',
        options: [
          '<body style="background-color:yellow;">',
          '<background>yellow</background>',
          '<body bg="yellow">',
          '<bg>yellow</bg>',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Choose the correct HTML element to define important text:',
        options: [
          '<strong>',
          '<b>',
          '<i>',
          '<important>',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which HTML element defines the title of a document?',
        options: [
          '<meta>',
          '<title>',
          '<head>',
          '<header>',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the correct HTML for creating a hyperlink?',
        options: [
          '<a href="http://example.com">Example</a>',
          '<link src="http://example.com">Example</link>',
          '<a url="http://example.com">Example</a>',
          '<href="http://example.com">Example</href>',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How can you make a numbered list?',
        options: [
          '<ul>',
          '<ol>',
          '<dl>',
          '<list>',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Who is making the Web standards?',
        options: [
          'Google',
          'Mozilla',
          'Microsoft',
          'The World Wide Web Consortium',
        ],
        correctIndex: 3,
      ),
    ],
    'CSS': [
      Question(
        questionText: 'What does CSS stand for?',
        options: [
          'Creative Style Sheets',
          'Colorful Style Sheets',
          'Cascading Style Sheets',
          'Computer Style Sheets',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which HTML tag is used to define an internal style sheet?',
        options: [
          '<style>',
          '<css>',
          '<script>',
          '<link>',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which is the correct CSS syntax?',
        options: [
          'body {color: black;}',
          '{body:color=black;}',
          '{body;color:black;}',
          'body:color=black;',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How do you insert a comment in a CSS file?',
        options: [
          '// this is a comment',
          '/* this is a comment */',
          '<!-- this is a comment -->',
          '** this is a comment **',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which property is used to change the background color?',
        options: [
          'bgcolor',
          'color',
          'background-color',
          'background',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'How do you make each word in a text start with a capital letter?',
        options: [
          'text-transform:capitalize;',
          'text-style:capitalize;',
          'transform:capitalize;',
          'font-variant:small-caps;',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which CSS property controls the text size?',
        options: [
          'font-size',
          'text-style',
          'font-style',
          'text-size',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How do you select an element with id "demo"?',
        options: [
          '#demo',
          '.demo',
          'demo',
          '*demo',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How do you select elements with class name "intro"?',
        options: [
          '.intro',
          '#intro',
          '*intro',
          'intro',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which property is used to change the font of an element?',
        options: [
          'font-style',
          'font-family',
          'text-style',
          'font-weight',
        ],
        correctIndex: 1,
      ),
    ],
    'Java': [
      Question(
        questionText: 'Which company originally developed Java?',
        options: [
          'Sun Microsystems',
          'Microsoft',
          'Apple',
          'Google',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the extension of Java bytecode files?',
        options: [
          '.java',
          '.class',
          '.jar',
          '.exe',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which keyword is used to create a subclass in Java?',
        options: [
          'this',
          'super',
          'extends',
          'implements',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which method is the entry point of a Java program?',
        options: [
          'start()',
          'main()',
          'run()',
          'init()',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the size of an `int` data type in Java?',
        options: [
          '2 bytes',
          '4 bytes',
          '8 bytes',
          'Depends on system',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which keyword is used to prevent inheritance of a class?',
        options: [
          'final',
          'static',
          'private',
          'const',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the superclass of all classes in Java?',
        options: [
          'Object',
          'Class',
          'Main',
          'System',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which operator is used to compare two values?',
        options: [
          '=',
          '==',
          '!=',
          '<>',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these is not a Java keyword?',
        options: [
          'try',
          'class',
          'include',
          'static',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which package contains the Scanner class?',
        options: [
          'java.util',
          'java.io',
          'java.lang',
          'java.awt',
        ],
        correctIndex: 0,
      ),
    ],
    'PHP': [
      Question(
        questionText: 'What does PHP stand for?',
        options: [
          'Personal Home Page',
          'Private Home Page',
          'PHP: Hypertext Preprocessor',
          'Public Hypertext Processor',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What does PHP stand for?',
        options: [
          'Personal Home Page',
          'Private Home Page',
          'PHP: Hypertext Preprocessor',
          'Programmed Hyper Page',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which PHP function is used to send an email?',
        options: [
          'send_mail()',
          'email_send()',
          'mail()',
          'smtp_send()',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'How do you start a session in PHP?',
        options: [
          'session_start()',
          'start_session()',
          'begin_session()',
          'initialize_session()',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which symbol is used to concatenate strings in PHP?',
        options: [
          '+',
          '&',
          '.',
          '-',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which function is used to get the length of a string in PHP?',
        options: [
          'strlen()',
          'str_length()',
          'length()',
          'size()',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which PHP function is used to redirect to another page?',
        options: [
          'redirect()',
          'location()',
          'header()',
          'navigate()',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the correct way to write a comment in PHP?',
        options: [
          '// This is a comment',
          '# This is a comment',
          '/* This is a comment */',
          'All of the above',
        ],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'Which of the following is a valid way to declare an array in PHP?',
        options: [
          'array()',
          '[]',
          'array[]',
          'arr()',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the default session save path in PHP?',
        options: [
          '/tmp',
          '/sessions',
          '/var/lib/php/sessions',
          'C:\temp',
        ],
        correctIndex: 2,
      ),
    ],
    'MySQL': [
      Question(
        questionText: 'What does SQL stand for?',
        options: [
          'Structured Question Language',
          'Strong Question Language',
          'Structured Query Language',
          'Sequential Query Language',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which MySQL command is used to retrieve data from a database?',
        options: [
          'GET',
          'SELECT',
          'RETRIEVE',
          'SHOW',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which MySQL statement is used to create a database?',
        options: [
          'MAKE DATABASE',
          'NEW DATABASE',
          'CREATE DATABASE',
          'BUILD DATABASE',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which clause is used to filter records in MySQL?',
        options: [
          'SORT BY',
          'FILTER',
          'WHERE',
          'ORDER BY',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which MySQL command is used to delete all records from a table?',
        options: [
          'DROP TABLE',
          'DELETE *',
          'REMOVE',
          'DELETE FROM table_name',
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which keyword is used to sort the result-set in SQL?',
        options: [
          'SORT',
          'ORDER BY',
          'GROUP BY',
          'RANK BY',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'How do you select all the columns from a table named "users"?',
        options: [
          'SELECT ALL FROM users;',
          'SELECT * FROM users;',
          'SELECT users FROM *;',
          'GET * FROM users;',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which function is used to count the number of rows in MySQL?',
        options: [
          'SUM()',
          'TOTAL()',
          'COUNT()',
          'ROWCOUNT()',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which operator is used to check for equality in MySQL?',
        options: [
          '=',
          '==',
          'EQUAL',
          '===',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the default port number for MySQL?',
        options: [
          '8080',
          '3306',
          '1521',
          '1433',
        ],
        correctIndex: 1,
      ),
    ],
    'Flutter': [
      Question(
        questionText: 'What is Flutter?',
        options: [
          'A programming language',
          'A web server',
          'An open-source UI toolkit by Google',
          'An operating system',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which language is primarily used to write Flutter apps?',
        options: [
          'Java',
          'Kotlin',
          'Dart',
          'Swift',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which widget is used to create a scrollable list in Flutter?',
        options: [
          'ListView',
          'Column',
          'Row',
          'Container',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which method is the entry point of a Flutter app?',
        options: [
          'start()',
          'run()',
          'beginApp()',
          'main()',
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What does the `build()` method return?',
        options: [
          'A function',
          'A widget',
          'A variable',
          'A string',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which widget is commonly used for layout and positioning in Flutter?',
        options: [
          'Scaffold',
          'MaterialApp',
          'Padding',
          'ListTile',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the purpose of the `Scaffold` widget?',
        options: [
          'To define app theme',
          'To provide basic material design visual layout structure',
          'To store data',
          'To handle animations',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which widget would you use to create a button in Flutter?',
        options: [
          'Text',
          'Container',
          'ElevatedButton',
          'Image',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What does the `setState()` function do in Flutter?',
        options: [
          'Deletes the widget',
          'Creates a new screen',
          'Updates the state and redraws the widget',
          'Initializes the app',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which widget is used to navigate between screens in Flutter?',
        options: [
          'Scaffold',
          'Navigator',
          'AppBar',
          'MaterialApp',
        ],
        correctIndex: 1,
      ),
    ],
    'Python': [
      Question(
        questionText: 'What is Python?',
        options: [
          'A type of snake',
          'A high-level programming language',
          'An operating system',
          'A text editor',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Who developed Python?',
        options: [
          'Dennis Ritchie',
          'Guido van Rossum',
          'James Gosling',
          'Bjarne Stroustrup',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which symbol is used to start a comment in Python?',
        options: [
          '//',
          '--',
          '#',
          '/*',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the correct file extension for Python files?',
        options: [
          '.pt',
          '.py',
          '.pyt',
          '.python',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How do you print something to the console in Python?',
        options: [
          'echo()',
          'console.log()',
          'print()',
          'printf()',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which keyword is used to define a function in Python?',
        options: [
          'function',
          'def',
          'fun',
          'define',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What data type is the result of: type(10.5)?',
        options: [
          'int',
          'float',
          'str',
          'double',
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following is used to create a loop in Python?',
        options: [
          'for',
          'loop',
          'repeat',
          'iterate',
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How do you insert comments in Python code?',
        options: [
          'Using /* */',
          'Using //',
          'Using #',
          'Using <>',
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which one of these is a Python tuple?',
        options: [
          '[1, 2, 3]',
          '{1, 2, 3}',
          '(1, 2, 3)',
          '<1, 2, 3>',
        ],
        correctIndex: 2,
      ),
    ],
  },
  'Sports': {
    'Cricket': [
      Question(
        questionText: 'How many players are there in a cricket team?',
        options: ['9', '10', '11', '12'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the maximum number of overs in a T20 match?',
        options: ['20', '50', '10', '15'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which country won the first Cricket World Cup in 1975?',
        options: ['India', 'Australia', 'England', 'West Indies'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'How many runs is a boundary worth in cricket?',
        options: ['2', '4', '6', '1'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'What is it called when a bowler takes three wickets in three balls?',
        options: ['Triple', 'Hat-trick', 'Trick shot', 'Three-step'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Who is known as the "God of Cricket"?',
        options: [
          'Virat Kohli',
          'Ricky Ponting',
          'Sachin Tendulkar',
          'MS Dhoni'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What color ball is used in Test matches?',
        options: ['Red', 'White', 'Pink', 'Blue'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which Indian cricketer is nicknamed "Captain Cool"?',
        options: ['Virat Kohli', 'Rohit Sharma', 'MS Dhoni', 'Kapil Dev'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What does LBW stand for in cricket?',
        options: [
          'Left Bat Wide',
          'Leg Before Wicket',
          'Long Bat Win',
          'Low Bat Way'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How many stumps are there on a cricket pitch?',
        options: ['2', '3', '4', '5'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which country hosted the 2019 Cricket World Cup?',
        options: ['India', 'Australia', 'England', 'South Africa'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for 100 runs by a single batsman in one inning?',
        options: ['Double', 'Century', 'Fifty', 'Ton'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which cricket format has the longest duration?',
        options: ['T20', 'One Day', 'Test', 'Super Over'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'How many balls are there in one over?',
        options: ['5', '6', '10', '4'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Who has scored the most international centuries?',
        options: [
          'Virat Kohli',
          'Ricky Ponting',
          'Sachin Tendulkar',
          'Brian Lara'
        ],
        correctIndex: 2,
      ),
    ],
    'Hockey': [
      Question(
        questionText: 'How many players are there in a field hockey team?',
        options: ['9', '10', '11', '12'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which country is known as the "Home of Hockey"?',
        options: ['India', 'Australia', 'England', 'Germany'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'How long is a standard field hockey match?',
        options: ['30 minutes', '60 minutes', '70 minutes', '90 minutes'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the shape of a hockey stick’s head?',
        options: ['Round', 'Flat on one side', 'Triangular', 'Square'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which Indian player is known as the "Wizard of Hockey"?',
        options: [
          'Sardar Singh',
          'Dhanraj Pillay',
          'Dhyan Chand',
          'Manpreet Singh'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the area in front of the goal called?',
        options: ['Goal ring', 'Circle', 'Penalty zone', 'D-Box'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How many goals is a penalty stroke worth?',
        options: ['1', '2', '3', '5'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which country has won the most Olympic gold medals in hockey?',
        options: ['Australia', 'India', 'Germany', 'Netherlands'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'What card color means a player must leave the field permanently?',
        options: ['Yellow', 'Green', 'Red', 'Blue'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which surface is modern field hockey usually played on?',
        options: ['Grass', 'Clay', 'Artificial turf', 'Concrete'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'How is play restarted after the ball goes over the sideline?',
        options: ['Corner hit', 'Center pass', 'Free hit', 'Throw-in'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of the following is not a type of pass in hockey?',
        options: ['Push pass', 'Hit', 'Drag pass', 'Volley pass'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which organization governs international field hockey?',
        options: ['FIFA', 'BCCI', 'FIH', 'ICC'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'When was hockey first included in the Olympic Games?',
        options: ['1908', '1928', '1936', '1948'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is awarded when a defender commits a foul in the shooting circle?',
        options: ['Free hit', 'Penalty corner', 'Throw-in', 'Center pass'],
        correctIndex: 1,
      ),
    ],
    'Football': [
      Question(
        questionText:
            'How many players are there in a football team on the field?',
        options: ['9', '10', '11', '12'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which country has won the most FIFA World Cups?',
        options: ['Germany', 'Argentina', 'Italy', 'Brazil'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What is the duration of a standard football match?',
        options: ['60 minutes', '90 minutes', '80 minutes', '70 minutes'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which part of the body can’t touch the ball in football?',
        options: ['Legs', 'Chest', 'Head', 'Hands'],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'What is the name of the football tournament held every 4 years?',
        options: [
          'Champions League',
          'Copa America',
          'FIFA World Cup',
          'La Liga'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Who is known as the "King of Football"?',
        options: ['Messi', 'Cristiano Ronaldo', 'Pele', 'Maradona'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which player has won the most Ballon d\'Or awards?',
        options: ['Cristiano Ronaldo', 'Messi', 'Zidane', 'Ronaldinho'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How many referees are usually present on the field?',
        options: ['1', '2', '3', '4'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which country hosted the 2022 FIFA World Cup?',
        options: ['Russia', 'Qatar', 'USA', 'France'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is awarded to a player for a serious foul?',
        options: ['Goal', 'Corner', 'Red Card', 'Throw-in'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for three goals scored by one player in a match?',
        options: ['Triple', 'Trickster', 'Hat-trick', 'Tri-goal'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What does VAR stand for?',
        options: [
          'Video Action Replay',
          'Verified Assistant Referee',
          'Virtual Assistant Referee',
          'Video Assistant Referee'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which position is responsible for stopping goals?',
        options: ['Defender', 'Midfielder', 'Striker', 'Goalkeeper'],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'Which club has won the most UEFA Champions League titles?',
        options: ['Barcelona', 'AC Milan', 'Manchester United', 'Real Madrid'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What color card means a player is cautioned?',
        options: ['Red', 'Yellow', 'Green', 'Blue'],
        correctIndex: 1,
      ),
    ],
    'Kabaddi': [
      Question(
        questionText: 'How many players are there in a Kabaddi team?',
        options: ['5', '6', '7', '8'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which country is the birthplace of Kabaddi?',
        options: ['India', 'Pakistan', 'Nepal', 'Bangladesh'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the duration of a standard Kabaddi match?',
        options: ['20 minutes', '30 minutes', '40 minutes', '45 minutes'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the name of the raid action in Kabaddi?',
        options: ['Chuk', 'Chinta', 'Raiding', 'Kaba'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'In Kabaddi, what is the main objective during a raid?',
        options: [
          'To tag an opponent',
          'To score a point',
          'To touch the ball',
          'To escape the circle'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is a "Super Tackle" in Kabaddi?',
        options: [
          'A successful raid',
          'A tackle with three defenders',
          'A raid where all players are tagged',
          'A tackle with one defender'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'How many points are awarded for a successful Super Raid in Kabaddi?',
        options: ['1', '2', '3', '4'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for when a team scores all its points in a single raid?',
        options: ['All-out', 'Super Raid', 'Full House', 'Double Hit'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'How many defenders must tag the raider to stop their raid?',
        options: ['1', '2', '3', '4'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What color card is given for a serious foul in Kabaddi?',
        options: ['Red', 'Yellow', 'Green', 'Blue'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the playing area called in Kabaddi?',
        options: ['Court', 'Field', 'Circle', 'Arena'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of these is a basic move in Kabaddi?',
        options: [
          'Raiding',
          'Tackling',
          'Kicking',
          'Both raiding and tackling'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'What is the total number of players on the field in Kabaddi?',
        options: ['7', '8', '9', '10'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which of the following is the name of the World Kabaddi Championship?',
        options: [
          'Pro Kabaddi League',
          'Kabaddi World Cup',
          'Asian Kabaddi Championship',
          'Kabaddi Premier League'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Who is known as the "King of Kabaddi"?',
        options: [
          'Anup Kumar',
          'Maninder Singh',
          'Rakesh Kumar',
          'Ajay Thakur'
        ],
        correctIndex: 0,
      ),
    ],
    'Chess': [
      Question(
        questionText: 'How many squares are there on a chessboard?',
        options: ['64', '72', '100', '81'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which piece can move both diagonally and straight?',
        options: ['Rook', 'Queen', 'King', 'Bishop'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which piece is initially placed in the center of the back rank?',
        options: ['King', 'Queen', 'Rook', 'Pawn'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How many pawns does each player start with?',
        options: ['6', '8', '10', '12'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which piece moves in an "L" shape?',
        options: ['Knight', 'Rook', 'Bishop', 'Queen'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is it called when a pawn reaches the opposite end of the board?',
        options: ['En passant', 'Promotion', 'Castling', 'Check'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'What is the special move where the king and rook move together?',
        options: ['En passant', 'Promotion', 'Castling', 'Check'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for a position where the king is under attack?',
        options: ['Check', 'Mate', 'Fork', 'Pin'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which piece is known as the "most powerful" in chess?',
        options: ['Queen', 'King', 'Rook', 'Bishop'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is the maximum number of queens one player can have?',
        options: ['1', '2', '3', '16'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'How many total pieces does each player start with in a chess game?',
        options: ['12', '14', '16', '18'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for a situation where a player cannot make a legal move?',
        options: ['Checkmate', 'Stalemate', 'En Passant', 'Fork'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the initial position of the king in chess?',
        options: [
          'E1 for White, E8 for Black',
          'D1 for White, D8 for Black',
          'F1 for White, F8 for Black',
          'E2 for White, E7 for Black'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which piece can move across the entire board in any direction?',
        options: ['Knight', 'Rook', 'Bishop', 'Queen'],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'Which move allows a pawn to capture another pawn diagonally but only when it is adjacent?',
        options: ['Promotion', 'En Passant', 'Castling', 'Check'],
        correctIndex: 1,
      ),
    ],
    'Kho-Kho': [
      Question(
        questionText: 'How many players are there in a Kho-Kho team?',
        options: ['7', '8', '9', '10'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which country is the origin of Kho-Kho?',
        options: ['India', 'Pakistan', 'Sri Lanka', 'Bangladesh'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'How many players are on the field at a time in Kho-Kho?',
        options: ['5', '6', '7', '8'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'How long is the duration of a Kho-Kho match?',
        options: ['10 minutes', '15 minutes', '20 minutes', '30 minutes'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'In Kho-Kho, what is the main objective of the chaser?',
        options: [
          'Tagging the runner',
          'Protecting the pole',
          'Running away from the tagger',
          'Dodging the opposition'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What shape is the playing field in Kho-Kho?',
        options: ['Square', 'Rectangular', 'Circular', 'Triangular'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'What is the term used for the act of a chaser chasing the runner in Kho-Kho?',
        options: ['Raid', 'Chase', 'Kho', 'Attack'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'How many "kho" or turns does a player get in a game of Kho-Kho?',
        options: ['1', '2', '3', '4'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which player starts the game as the first chaser in Kho-Kho?',
        options: ['Captain', 'Last player', 'First runner', 'Random player'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is the total number of players in a Kho-Kho team, including substitutes?',
        options: ['8', '10', '12', '14'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What happens when a player is tagged in Kho-Kho?',
        options: [
          'They are eliminated',
          'They sit out for a round',
          'They become a chaser',
          'They must run again'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'What is the term for when a player is tagged while trying to escape in Kho-Kho?',
        options: ['Out', 'Tagged', 'Catch', 'Knocked out'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What direction do the players in Kho-Kho run in the initial phase of the game?',
        options: ['Clockwise', 'Counter-clockwise', 'Backwards', 'Random'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How many chasers are there in a Kho-Kho team at a time?',
        options: ['3', '4', '5', '6'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which sport is most similar to Kho-Kho?',
        options: ['Kabaddi', 'Tag', 'Cricket', 'Football'],
        correctIndex: 1,
      ),
    ],
    'Olympic Games': [
      Question(
        questionText: 'Where were the first modern Olympic Games held?',
        options: ['Paris', 'Athens', 'London', 'Berlin'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which year did the first modern Olympic Games take place?',
        options: ['1880', '1896', '1924', '1900'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'How often are the Summer Olympic Games held?',
        options: [
          'Every 2 years',
          'Every 4 years',
          'Every 6 years',
          'Every 5 years'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which city hosted the 2008 Summer Olympics?',
        options: ['Beijing', 'Tokyo', 'London', 'Sydney'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which country has won the most Olympic gold medals?',
        options: ['USA', 'China', 'Russia', 'Germany'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'In which year were the Winter Olympic Games first held?',
        options: ['1924', '1932', '1948', '1956'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the motto of the Olympic Games?',
        options: [
          'Faster, Higher, Stronger',
          'Stronger Together',
          'Victory for All',
          'Unity in Diversity'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which athlete has won the most Olympic gold medals?',
        options: [
          'Usain Bolt',
          'Michael Phelps',
          'Carl Lewis',
          'Larisa Latynina'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which country will host the 2024 Summer Olympics?',
        options: ['USA', 'Japan', 'France', 'Australia'],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which event was first introduced in the Summer Olympics in 1896?',
        options: ['Basketball', 'Athletics', 'Football', 'Swimming'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the name of the Olympic torchbearer ceremony?',
        options: [
          'Lighting the Torch',
          'The Flame Ceremony',
          'The Torch Relay',
          'Opening Ceremony'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which sport was removed from the Olympic Games after 1936?',
        options: ['Baseball', 'Cricket', 'Golf', 'Polo'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which city hosted the 2016 Summer Olympics?',
        options: ['London', 'Rio de Janeiro', 'Beijing', 'Tokyo'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'How many sports are contested in the Summer Olympic Games?',
        options: ['20', '30', '40', '50'],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'In which year did the Olympic Games introduce the Paralympic Games?',
        options: ['1948', '1960', '1972', '1988'],
        correctIndex: 1,
      ),
    ],
  },
  'Maths': {
    'Easy': [
      Question(
        questionText: 'What is 2 + 2?',
        options: ['3', '4', '5', '6'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 3 + 5?',
        options: ['6', '7', '8', '9'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 6 - 4?',
        options: ['1', '2', '3', '4'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 5 + 7?',
        options: ['10', '11', '12', '13'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 9 - 3?',
        options: ['4', '5', '6', '7'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 8 + 4?',
        options: ['10', '11', '12', '13'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 15 - 9?',
        options: ['5', '6', '7', '8'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 10 + 3?',
        options: ['11', '12', '13', '14'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 7 - 2?',
        options: ['4', '5', '6', '7'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 6 + 6?',
        options: ['10', '11', '12', '13'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 4 + 5?',
        options: ['7', '8', '9', '10'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 3 + 6?',
        options: ['8', '9', '10', '11'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 14 - 5?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 2 + 6?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 10 - 4?',
        options: ['5', '6', '7', '8'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 12 + 4?',
        options: ['15', '16', '17', '18'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 5 + 3?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 16 - 8?',
        options: ['6', '7', '8', '9'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 13 - 7?',
        options: ['5', '6', '7', '8'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 3 + 4?',
        options: ['6', '7', '8', '9'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 9 + 2?',
        options: ['10', '11', '12', '13'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 10 - 3?',
        options: ['5', '6', '7', '8'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 5 + 6?',
        options: ['10', '11', '12', '13'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 8 - 3?',
        options: ['4', '5', '6', '7'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 7 + 4?',
        options: ['9', '10', '11', '12'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 6 + 2?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 12 - 4?',
        options: ['6', '7', '8', '9'],
        correctIndex: 2,
      ),
    ],
    'Average': [
      Question(
        questionText: 'What is 25 × 5?',
        options: ['120', '125', '130', '135'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 18 ÷ 3?',
        options: ['5', '6', '7', '8'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 50 × 4?',
        options: ['200', '180', '220', '240'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 36 ÷ 6?',
        options: ['5', '6', '7', '8'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 14 × 9?',
        options: ['122', '126', '128', '130'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 81 ÷ 9?',
        options: ['7', '8', '9', '10'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 45 × 3?',
        options: ['135', '140', '145', '150'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 72 ÷ 8?',
        options: ['8', '9', '10', '11'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 57 ÷ 3?',
        options: ['18', '19', '20', '21'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 92 ÷ 4?',
        options: ['22', '23', '24', '25'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 58 × 2?',
        options: ['114', '116', '118', '120'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 112 ÷ 7?',
        options: ['14', '15', '16', '17'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 144 ÷ 12?',
        options: ['11', '12', '13', '14'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 300 ÷ 6?',
        options: ['48', '49', '50', '51'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 225 ÷ 5?',
        options: ['40', '45', '50', '55'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 36 × 5?',
        options: ['170', '180', '190', '200'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 144 ÷ 8?',
        options: ['17', '18', '19', '20'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 22 × 6?',
        options: ['132', '134', '136', '140'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 72 × 3?',
        options: ['210', '215', '220', '225'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 99 ÷ 3?',
        options: ['30', '32', '33', '34'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 180 ÷ 9?',
        options: ['18', '19', '20', '21'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 56 × 4?',
        options: ['220', '224', '228', '232'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 63 ÷ 7?',
        options: ['8', '9', '10', '11'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 84 ÷ 12?',
        options: ['6', '7', '8', '9'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 80 ÷ 10?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 100 ÷ 5?',
        options: ['18', '19', '20', '21'],
        correctIndex: 2,
      ),
    ],
    'Hard': [
      Question(
        questionText: 'What is the value of 16 × 25?',
        options: ['400', '375', '450', '500'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 256 ÷ 16?',
        options: ['12', '14', '16', '18'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 123 × 17?',
        options: ['2001', '2101', '2201', '2301'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 512 ÷ 64?',
        options: ['6', '7', '8', '9'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 144 ÷ 12 × 3?',
        options: ['36', '37', '38', '39'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the square root of 169?',
        options: ['11', '12', '13', '14'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 225 ÷ 15?',
        options: ['14', '15', '16', '17'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 121 × 11?',
        options: ['1311', '1321', '1331', '1341'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 225 + 375?',
        options: ['500', '600', '550', '650'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the value of 9 × 9 × 9?',
        options: ['729', '800', '810', '850'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 484 ÷ 22?',
        options: ['21', '22', '23', '24'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 1024 ÷ 32?',
        options: ['28', '29', '30', '31'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 72 ÷ (9 - 3)?',
        options: ['10', '11', '12', '13'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 18 × 25?',
        options: ['430', '450', '460', '470'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 99 × 102?',
        options: ['10098', '10099', '10100', '10101'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 1456 ÷ 8?',
        options: ['172', '173', '174', '175'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 192 ÷ (16 ÷ 4)?',
        options: ['40', '42', '44', '46'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the cube root of 512?',
        options: ['7', '8', '9', '10'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 7 × 13 × 11?',
        options: ['1001', '1021', '1041', '1061'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 567 + 678?',
        options: ['1245', '1246', '1255', '1260'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 2000 ÷ 40?',
        options: ['45', '46', '47', '48'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What is 1578 ÷ 9?',
        options: ['176', '177', '178', '179'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 333 × 9?',
        options: ['2997', '3007', '3017', '3027'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the square of 45?',
        options: ['2025', '2050', '2100', '2150'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the value of 144 + 256?',
        options: ['390', '400', '410', '420'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 5 × (5 + 5)?',
        options: ['40', '45', '50', '55'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is 512 ÷ 8 × 4?',
        options: ['252', '256', '260', '264'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is 1024 ÷ (8 × 4)?',
        options: ['32', '33', '34', '35'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is 600 ÷ 12 × 5?',
        options: ['245', '250', '255', '260'],
        correctIndex: 1,
      ),
    ],
  },
  'English': {
    'Easy': [
      Question(
        questionText: 'What is the plural of “child”?',
        options: ['Childs', 'Children', 'Childes', 'Childer'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the past tense of “go”?',
        options: ['Went', 'Gone', 'Goes', 'Going'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of the following is a synonym for “happy”?',
        options: ['Sad', 'Joyful', 'Angry', 'Bored'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which word is the antonym of “big”?',
        options: ['Large', 'Huge', 'Tiny', 'Massive'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the plural of “mouse”?',
        options: ['Mouses', 'Mice', 'Mices', 'Mouseses'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the past tense of “eat”?',
        options: ['Eaten', 'Ate', 'Eats', 'Eating'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which word is a noun?',
        options: ['Run', 'Quickly', 'Happy', 'School'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What is the opposite of “cold”?',
        options: ['Hot', 'Warm', 'Freezing', 'Icy'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word is an adjective?',
        options: ['House', 'Quick', 'Run', 'Happily'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these is a contraction?',
        options: ['Should not', 'I am', 'I will', 'Can not'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which is the correct spelling?',
        options: ['Occured', 'Occurred', 'Ocurred', 'Ocurred'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the past tense of “sing”?',
        options: ['Sang', 'Sung', 'Singed', 'Singing'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these words is a verb?',
        options: ['Sleep', 'Dream', 'Jump', 'All of the above'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'What is the plural of “baby”?',
        options: ['Babies', 'Babys', 'Babyes', 'Babyses'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the correct form of the sentence?',
        options: [
          'She running fast',
          'She run fast',
          'She runs fast',
          'She runned fast'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of these words is an adverb?',
        options: ['Quick', 'Quickly', 'Quicker', 'Quickest'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the past tense of “swim”?',
        options: ['Swam', 'Swimmed', 'Swim', 'Swimming'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word means “not happy”?',
        options: ['Joyful', 'Sad', 'Pleased', 'Glad'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the plural of “man”?',
        options: ['Manes', 'Men', 'Mans', 'Mens'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the opposite of “love”?',
        options: ['Hate', 'Like', 'Adore', 'Cherish'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'What is the correct spelling?',
        options: ['Seperated', 'Seperated', 'Separated', 'Separted'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the past tense of “run”?',
        options: ['Runned', 'Ran', 'Run', 'Running'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the plural of “woman”?',
        options: ['Womans', 'Womanses', 'Women', 'Womanses'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which word is a preposition?',
        options: ['Under', 'Jump', 'Laugh', 'Happy'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word is an interjection?',
        options: ['Oh', 'Quickly', 'Beautiful', 'Swim'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these is a proper noun?',
        options: ['city', 'river', 'John', 'mountain'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the opposite of “full”?',
        options: ['Empty', 'Complete', 'Closed', 'Open'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which is the correct sentence?',
        options: [
          'She can sings well',
          'She can sing well',
          'She can singing well',
          'She can sings good'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the past tense of “give”?',
        options: ['Gave', 'Given', 'Gives', 'Giving'],
        correctIndex: 0,
      ),
    ],
    'Average': [
      Question(
        questionText:
            'Which of the following is the correct plural form of “box”?',
        options: ['Boxes', 'Boxs', 'Boxxes', 'Bixes'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these words is a homophone for “right”?',
        options: ['Rite', 'Write', 'Wright', 'All of the above'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which sentence is written correctly?',
        options: [
          'I have went to the store.',
          'I had gone to the store.',
          'I gone to the store.',
          'I have gone to the store.'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which of these is an example of a simile?',
        options: [
          'The cat is as fast as lightning.',
          'The cat is fast.',
          'The cat is a lightning.',
          'The cat ran fast.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these is a compound sentence?',
        options: [
          'She was tired, but she still went to work.',
          'She was tired. She still went to work.',
          'She was tired because she went to work.',
          'She was tired after going to work.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which is the correct way to use “their”?',
        options: [
          'They left there bags at home.',
          'They left their bags at home.',
          'They left they’re bags at home.',
          'They left theirs bags at home.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which word is a synonym for “important”?',
        options: ['Insignificant', 'Crucial', 'Trivial', 'Minor'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the correct use of “who” and “whom”?',
        options: [
          'Who is the person you are talking to?',
          'Whom is the person you are talking to?',
          'Who is she giving the book to?',
          'Whom is she giving the book to?'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which sentence is in the future tense?',
        options: [
          'She was going to the store.',
          'She is going to the store.',
          'She will go to the store.',
          'She goes to the store.'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which of the following sentences uses the correct form of “affect”?',
        options: [
          'The news will affect my decision.',
          'The news will effect my decision.',
          'The news will effected my decision.',
          'The news affected my decision.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these sentences is grammatically correct?',
        options: [
          'She and I will go shopping tomorrow.',
          'She and me will go shopping tomorrow.',
          'I and she will go shopping tomorrow.',
          'Me and her will go shopping tomorrow.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word is the correct past participle of “eat”?',
        options: ['Eaten', 'Ate', 'Eating', 'Eats'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which is the correct sentence?',
        options: [
          'He is more smarter than she is.',
          'He is smarter than she is.',
          'He more smart than she is.',
          'He is smarter than her is.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of the following sentences is a complex sentence?',
        options: [
          'I went to the store, but it was closed.',
          'I went to the store and bought groceries.',
          'Because I went to the store, it was closed.',
          'I went to the store after it was closed.'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of these is a gerund?',
        options: ['Jumping', 'Jump', 'Jumps', 'Jumped'],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is the correct form of the verb in this sentence: “She ____ the book.”',
        options: ['Read', 'Reads', 'Reading', 'Readed'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these sentences contains a preposition?',
        options: [
          'She sat under the tree.',
          'She sat the tree.',
          'She sat on the tree.',
          'She sat under tree.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'What is the correct word order for a question in the present simple?',
        options: [
          'Do she likes it?',
          'Does she like it?',
          'Does she liked it?',
          'She likes it?'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these is a possessive pronoun?',
        options: ['Mine', 'His', 'Yours', 'All of the above'],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'Which of these words is an example of a superlative adjective?',
        options: ['Good', 'Better', 'Best', 'Well'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of the following sentences is passive voice?',
        options: [
          'The book was read by her.',
          'She read the book.',
          'She has read the book.',
          'She is reading the book.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these words is a synonym for “angry”?',
        options: ['Joyful', 'Irritated', 'Sad', 'Excited'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these sentences contains an indirect object?',
        options: [
          'She gave me the book.',
          'She gave the book.',
          'She gave it to me.',
          'She gave a gift.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which of the following sentences is a declarative sentence?',
        options: [
          'Close the door.',
          'Can you close the door?',
          'You should close the door.',
          'I closed the door.'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which sentence uses the correct form of “there”?',
        options: [
          'There going to the store.',
          'They’re going to the store.',
          'Their going to the store.',
          'There going too the store.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of the following is a countable noun?',
        options: ['Water', 'Information', 'Apple', 'Music'],
        correctIndex: 2,
      ),
      Question(
        questionText: 'What is the correct plural of “leaf”?',
        options: ['Leafs', 'Leaves', 'Leavies', 'Leef'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which sentence uses the correct use of “fewer”?',
        options: [
          'There are fewer people at the party today.',
          'There are less people at the party today.',
          'There are less people than yesterday.',
          'There are fewer peoples at the party today.'
        ],
        correctIndex: 0,
      ),
    ],
    'Hard': [
      Question(
        questionText:
            'Which of these sentences contains an error in subject-verb agreement?',
        options: [
          'The team are playing well.',
          'The team is playing well.',
          'The teams are playing well.',
          'The team was playing well.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these sentences uses a misplaced modifier?',
        options: [
          'Walking down the street, the car passed me.',
          'Walking down the street, I saw the car.',
          'I saw the car walking down the street.',
          'The car passed me walking down the street.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word is the correct past participle of “lie”?',
        options: ['Lied', 'Lain', 'Lieded', 'Lay'],
        correctIndex: 1,
      ),
      Question(
        questionText: 'What is the correct plural of “criterion”?',
        options: ['Criteria', 'Criterions', 'Criteriae', 'Criterion'],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which sentence uses an Oxford comma?',
        options: [
          'I bought apples, oranges and bananas.',
          'I bought apples, oranges, and bananas.',
          'I bought apples and oranges and bananas.',
          'I bought apples oranges, and bananas.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which sentence uses “whom” correctly?',
        options: [
          'Whom is coming to the party?',
          'Who is coming to the party?',
          'Whom are you going to call?',
          'Who are you going to call?'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of these sentences contains a dangling modifier?',
        options: [
          'While walking to the store, the rain started.',
          'The rain started while I was walking to the store.',
          'Walking to the store, I noticed the rain started.',
          'The rain started while walking to the store.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which of the following sentences uses the correct form of “affect”?',
        options: [
          'The new policy will effect our results.',
          'The new policy will affect our results.',
          'The new policy effected our results.',
          'The new policy is effecting our results.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which sentence uses an ellipsis correctly?',
        options: [
          'I was going to the store... but I forgot my wallet.',
          'I was going to the store... then I realized I forgot my wallet.',
          'I was going to the store... however, I forgot my wallet.',
          'I was going to the store, but I forgot my wallet...'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of the following sentences is a complex sentence?',
        options: [
          'She went to the store, and he went to the park.',
          'She went to the store after he left.',
          'She went to the store, he went to the park.',
          'She went to the store before going to work.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText:
            'Which of these words is a correct example of a homograph?',
        options: [
          'Lead (to guide), lead (a metal)',
          'Tear (to rip), tear (a drop of liquid)',
          'Bow (tied with a ribbon), bow (to bend forward)',
          'All of the above'
        ],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which of these sentences contains an oxymoron?',
        options: [
          'He gave me a big small gift.',
          'He gave me a large little gift.',
          'She gave me a seriously funny joke.',
          'He gave me an amazing terrible gift.'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which sentence contains a gerund?',
        options: [
          'I enjoy running in the park.',
          'I enjoy run in the park.',
          'I enjoy to run in the park.',
          'I enjoyed running in the park.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which of these sentences uses an incorrect form of the subjunctive mood?',
        options: [
          'I wish I were there.',
          'I wish I was there.',
          'If I were you, I would go.',
          'If he were here, he would help.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these sentences uses an incorrect comparison?',
        options: [
          'She is more smarter than her sister.',
          'She is smarter than her sister.',
          'She is the smartest of the two.',
          'She is smarter than her sister is.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of the following is an example of an appositive?',
        options: [
          'My brother, a doctor, is visiting today.',
          'My brother visiting today.',
          'My brother is visiting today.',
          'Today my brother is visiting.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which sentence contains a parallel structure error?',
        options: [
          'She likes reading, writing, and to swim.',
          'She likes to read, to write, and to swim.',
          'She likes reading, writing, and swimming.',
          'She likes to read, write, and swim.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of the following is a relative clause?',
        options: [
          'I met the man who helped me.',
          'I met the man helping me.',
          'I met the man helped me.',
          'I met the man who was helping me.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText:
            'Which word is the correct form of “choose” in the past participle?',
        options: ['Choose', 'Chose', 'Choosing', 'Chosen'],
        correctIndex: 3,
      ),
      Question(
        questionText:
            'Which of the following sentences is written in active voice?',
        options: [
          'The book was read by her.',
          'The book had been read by her.',
          'She read the book.',
          'The book is read by her every day.'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText: 'Which of these sentences contains an ellipsis?',
        options: [
          'She was going to the store, but then she stopped.',
          'She was going to the store... and then she stopped.',
          'She was going to the store, and then... she stopped.',
          'She was going to the store.'
        ],
        correctIndex: 1,
      ),
      Question(
        questionText: 'Which of these sentences contains a misplaced modifier?',
        options: [
          'Walking down the street, the book was in my hand.',
          'The book was in my hand, walking down the street.',
          'I was walking down the street when I saw the book in my hand.',
          'Walking down the street, I saw the book in my hand.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which word is the correct plural of “analysis”?',
        options: ['Analyzes', 'Analysises', 'Analysis', 'Analyses'],
        correctIndex: 3,
      ),
      Question(
        questionText: 'Which of these sentences uses “less” incorrectly?',
        options: [
          'I have less books than she does.',
          'I have fewer books than she does.',
          'I have less water than you.',
          'I have less money than she does.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which of these sentences contains a misplaced modifier?',
        options: [
          'Walking down the street, I saw a dog with a leash.',
          'I saw a dog walking down the street with a leash.',
          'A dog with a leash was walking down the street.',
          'A dog with a leash was walking down the street.'
        ],
        correctIndex: 0,
      ),
      Question(
        questionText: 'Which sentence uses the correct form of “lay”?',
        options: [
          'I am going to lay down for a while.',
          'I laid down for a while.',
          'I lay down for a while.',
          'I has laid down for a while.'
        ],
        correctIndex: 2,
      ),
      Question(
        questionText:
            'Which of the following sentences uses the subjunctive mood correctly?',
        options: [
          'I wish I were there.',
          'I wish I was there.',
          'I wish I was there now.',
          'I wish I am there.'
        ],
        correctIndex: 0,
      ),
    ],
  },
};
