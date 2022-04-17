class Question {
  final int id, answer;
  final String question, images;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
    required this.images,
  });
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question": "Test 1",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 1,
    "image": "",
  },
  {
    "id": 2,
    "question": "Test 2.",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 2,
    "image": "",

  },
  {
    "id": 3,
    "question": "Test 3",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 2,
    "image": "",
  },
  {
    "id": 4,
    "question": "Test 4",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 2,
    "image": "",
  },
  {
    "id": 5,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "image": "",
  },
];
