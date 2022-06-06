import 'package:colorsblind/resource/test_colors.dart';

class Question {
  final int id, answer;
  final String question, photos;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
    required this.photos,
  });
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 26', 'Số 6', 'Số 2', 'Số 86'],
    "answer_index": 0,
    "photos": TestImages.image1,
  },
  {
    "id": 2,
    "question": "Bạn nhìn thấy số 5?",
    "options": ['Không', 'Có'],
    "answer_index": 0,
    "photos": TestImages.image2,
  },
  {
    "id": 3,
    "question": "Bạn có thấy dòng nguệch ngoạc trong hình?",
    "options": ['Không', 'Có'],
    "answer_index": 1,
    "photos": TestImages.image3,
  },
  {
    "id": 4,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 97', 'Số 74', 'Không thấy số!', 'Số 79'],
    "answer_index": 1,
    "photos": TestImages.image4,
  },
  {
    "id": 5,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 8', 'Số 6', 'Không thấy số!'],
    "answer_index": 1,
    "photos": TestImages.image5,
  },
  {
    "id": 6,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Không thấy số', 'Số 16', 'Số 5', 'Số 6'],
    "answer_index": 2,
    "photos": TestImages.image6,
  },
  {
    "id": 7,
    "question": "Bạn nhìn thấy số mấy?",
    "options": [
      'Số 10',
      'Không nhìn thấy số!',
      'Số 21',
      'Số 12',
    ],
    "answer_index": 3,
    "photos": TestImages.image7,
  },
  {
    "id": 8,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 8', 'Số 3', 'Số 6', 'Không nhìn thấy số!'],
    "answer_index": 0,
    "photos": TestImages.image8,
  },
  {
    "id": 9,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 9', 'Số 8', 'Số 3', 'Không nhìn thấy số'],
    "answer_index": 2,
    "photos": TestImages.image9,
  },
  {
    "id": 10,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 3', 'Số 0', 'Không nhìn số!','Số 8'],
    "answer_index": 3,
    "photos": TestImages.image10,
  },
];
