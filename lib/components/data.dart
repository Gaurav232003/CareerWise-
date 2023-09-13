double height = 0;
double width = 0;

List<String> questions = [
  'What is the value of 3/4 + 1/8? ',
  'Solve for x: 2x - 5 = 15.',
  'Find the area of a rectangle with a length of 12 units and a width of 6 units',
  'Calculate the area of a triangle with a base of 6 units and a height of 8 units.',
  'What is the value of 5^3 (5 raised to the power of 3)?',
  'Simplify: 4(3x - 2) - 2(2x + 5).',
  'If a box contains 24 apples and you take out 3, how many apples are left?',
  'What is the least common multiple (LCM) of 6 and 8?',
  'If the circumference of a circle is 36π (pi) units, what is its radius?',
  'Solve for y: 2y + 7 = 15.',
  'Identify the noun in the following sentence: "The cat chased the mouse."',
  'Which of the following sentences is written in the past tense?',
  'What is the synonym for "joyful"?',
  'In the sentence, "The book is on the shelf," what is the preposition?',
  'Which of the following sentences is a question?',
  'What is the chemical symbol for the element oxygen?',
  'Which planet in our solar system is known as the "Red Planet"?',
  'What is the process by which plants make their own food using sunlight?',
  'Which gas is most abundant in Earth\'s atmosphere?',
  'What is the unit of measurement for electric current?',
  'What is the capital city of Japan?',
  'Who was the first President of the United States?',
  'What is the largest continent by land area?',
  'In which year did Christopher Columbus first arrive in the Americas?',
  'What is the longest river in the world?',
  'If A = 3, B = 6, and C = 9, what is the value of 2A + 3B - C?',
  'What is the next number in the sequence: 1, 4, 9, 16, ___?',
  'If a rectangle has a length of 8 inches and a width of 6 inches, what is its perimeter?',
  'You have Rs. 20, and you buy a book for Rs. 8 and a toy for Rs. 5. How much money do you have left?',
  'If a train travels at a speed of 60 miles per hour and the journey takes 3 hours, how far does it travel?',
  'Who wrote the play "Romeo and Juliet"?',
  'What is the largest planet in our solar system?',
  'Who is the current Prime Minister of the United Kingdom (as of my last knowledge update in September 2021)?',
  'What is the chemical symbol for gold?',
  'Which famous scientist is known for the theory of relativity?',
  'If you need to boil water, which appliance would you most likely use?',
  'What is the first step in washing your hands properly?',
  'How many quarts are in a gallon?',
  'Which tool would you use to tighten a loose screw?',
  'What should you do if you accidentally spill a glass of water on the floor?',
];

List<List<String>> ans = [
  ['5/8', '7/8', '1/2', '1'],
  ['x = 10', 'x = 20', 'x = 5', 'x = 8'],
  ['18 sq units', '72 sq units', '36 sq units', '48 sq units'],
  ['12 square units', '24 square units', '48 square units', '32 square units'],
  ['15', '125', '75', '500'],
  ['6x - 12', '10x - 14', '6x + 12', '10x + 14'],
  ['24', '21', '3', '27'],
  ['12', '18', '24', '48'],
  ['6 units', '9 units', '12 units', '18 units'],
  ['y = 4', 'y = 8', 'y = 14', 'y = 5'],
  ['cat', 'chased', 'the', 'mouse'],
  [
    'She is eating dinner',
    'They will go to the park',
    'He walked to school',
    'We are playing games'
  ],
  ['Sad', 'Angry', 'Happy', 'Excited'],
  ['is', 'on', 'the', 'book'],
  [
    'It is sunny outside',
    'She ate lunch at noon',
    'Are you coming to the party?',
    'They play soccer after school.'
  ],
  ['O', 'Ox', 'Oxg', 'Om'],
  ['Earth', 'Mars', 'Venus', 'Jupiter'],
  ['Photosynthesis', 'Digestion', 'Respiration', 'Transpiration'],
  ['Nitrogen', 'Oxygen', 'Carbon dioxide', 'Hydrogen'],
  ['Amperes', 'Ohms', 'Watts', 'Volts'],
  ['Tokyo', 'Beijing', 'Seoul', 'Bangkok'],
  ['George Washington', 'John Adams', 'Thomas Jefferson', 'Abraham Lincoln'],
  ['Africa', 'Asia', 'North America', 'Europe'],
  ['1492', '1620', '1776', '1865'],
  ['Amazon river', 'Nile river', 'Mississippi river', 'Yangtze river'],
  ['9', '12', '15', '8'],
  ['20', '25', '32', '36'],
  ['12 inches', '14 inches', '24 inches', '28 inches'],
  ['Rs. 7', 'Rs. 12', 'Rs. 5', 'Rs. 3'],
  ['120 miles', '180 miles', '240 miles', '360 miles'],
  ['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
  ['Earth', 'Mars', 'Venus', 'Jupiter'],
  ['Boris Johnson', 'Theresa May', 'David Cameron', 'Tony Blair'],
  ['Go', 'Gd', 'Au', 'Ag'],
  ['Issac Newton', 'Galileo Galilei', 'Albert Einstein', 'Stephen Hawking'],
  ['Toaster', 'Microwave', 'Blender', 'Kettle'],
  [
    'Dry your hands with water',
    'Rinse your hands with water',
    'Apply soap to your hands',
    'Shake hands vigorously'
  ],
  ['2', '4', '8', '16'],
  ['Screwdriver', 'Pliers', 'Wrench', 'Hammer'],
  [
    'Wipe it up with a towel or mop.',
    'Leave it and let it evaporate',
    'Step over it and continue walking',
    'Ignore it; it will dry on its own.'
  ],
];

List<String> CorrectAns = [
  '7/8',
  'x = 10',
  '36 sq units',
  '24 square units',
  '125',
  '6x - 12',
  '21',
  '24',
  '9 units',
  'y = 4',
  'cat',
  'He walked to school',
  'Happy',
  'on',
  'Are you coming to the party?',
  'O',
  'Mars',
  'Photosynthesis',
  'Nitrogen',
  'Amperes',
  'Tokyo',
  'George Washington',
  'Africa',
  '1492',
  'Nile river',
  '9',
  '24 inches',
  'Rs. 7',
  '120 miles',
  'William Shakespeare',
  'Jupiter',
  'Boris Johnson',
  'Au',
  'Albert Einstein',
  'Kettle',
  'Apply soap to your hands',
  '4',
  'Screwdriver',
  'Wipe it up with a towel or mop.',
];
List<int> marks = [];
List<String> Selected = [];

String name = "";
int age = 0;
String email = "";
String phone = "";
String city = "";
int group = 0;



// Create a User object with the retrieved data

