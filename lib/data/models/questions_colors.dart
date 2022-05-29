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
    "options": ['Số 10', 'Số 16', 'Số 6', 'Không nhìn thấy số!'],
    "answer_index": 1,
    "photos":
        "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate12.gif",
  },
  {
    "id": 3,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 16', 'Số 5', 'Số 11'],
    "answer_index": 2,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate4.gif",
  },
  {
    "id": 4,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 16', 'Số 6', 'Số 61'],
    "answer_index": 2,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate8.gif",
  },
  {
    "id": 5,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 45', 'Số 16', 'Số 6', 'Số 54'],
    "answer_index": 0,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate9.gif",
  },
  {
    "id": 6,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 16', 'Số 6', 'Số 5'],
    "answer_index": 3,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate10.gif",
  },
  {
    "id": 7,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10','Không nhìn thấy số!', 'Số 16', 'Số 6', ],
    "answer_index": 1,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate14.gif",
  },
  {
    "id": 8,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 26', 'Số 6', 'Không nhìn thấy số!'],
    "answer_index": 1,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate16.gif",
  },
  {
    "id": 9,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 10', 'Số 16', 'Số 6', 'Không nhìn thấy số'],
    "answer_index": 3,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/plate18.gif",
  },
  {
    "id": 10,
    "question": "Bạn nhìn thấy số mấy?",
    "options": ['Số 12', 'Số 16', 'Số 6', 'Không nhìn số!'],
    "answer_index": 0,
    "photos":
    "https://phukienthaythe.com/images/san-pham/thiet-bi-mo-phong/ishihara/kiemtramumau1.png",
  },

];
