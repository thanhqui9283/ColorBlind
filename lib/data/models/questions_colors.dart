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
    "options": ['Số 8', 'Số 4', 'Số 0', 'Số 10'],
    "answer_index": 0,
    "photos":
        "https://phukienthaythe.com/images/data/2019/05/01/kiemtramumau2.png",
  },
  {
    "id": 2,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 16', 'Số 6', 'Không nhìn thấy gì!'],
    "answer_index": 1,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate12.gif",
  },
  {
    "id": 3,
    "question": "Test 3",
    "options": ['Số 5', 'Không thấy màu gì', 'Số 3', 'Số 1'],
    "answer_index": 2,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate14.gif",
  },
  {
    "id": 4,
    "question": "Test 4",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 2,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 5,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 6,
    "question": "Test 6",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 7,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 8,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 9,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
  {
    "id": 10,
    "question": "Test 5",
    "options": ['A', 'B', 'C', 'D'],
    "answer_index": 3,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate22.gif",
  },
];
