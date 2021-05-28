class Question {
  final int id, answer;
  final String question, image;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.image});
}

const List sample_data = [
  {
    "id": 1,
    "question": "n. pencil",
    "image": "assets/cebuano_pictures/Lapis.png",
    "options": ['lansang', 'lapis', 'laytir', 'lak-ang'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "n. rat",
    "image": "assets/cebuano_pictures/ilaga.png",
    "options": ['dalupapa', 'kabakaba', 'ilaga', 'buaya'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "n. telephone",
    "image": "assets/cebuano_pictures/Telepono.png",
    "options": ['tawag', 'timailhan', 'telephone', 'tudlu'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "n. drop",
    "image": "assets/cebuano_pictures/tulu.png",
    "options": ['tukud', 'tudlu', 'tulu', 'tiyan'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "n. eggplant",
    "image": "assets/cebuano_pictures/Talung.png",
    "options": ['bangus', 'ubas', 'tulu', 'talung'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "n. umbrella",
    "image": "assets/cebuano_pictures/payong.png",
    "options": ['payong', 'patik', 'pusing', 'pipa'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "n. pineapple",
    "image": "assets/cebuano_pictures/pinya.png",
    "options": ['pala', 'pinya', 'ubas', 'bayabas'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "n. paper",
    "image": "assets/cebuano_pictures/papel.png",
    "options": ['kutsilyo', 'gabas', 'papel', 'lapis'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "n. seven",
    "image": "assets/cebuano_pictures/pitu.png",
    "options": ['say-is', 'tres', 'walu', 'pitu'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "n. stomach",
    "image": "assets/cebuano_pictures/Tiyan.png",
    "options": ['tiyan', 'tiil', 'ilong', 'mata'],
    "answer_index": 0,
  },
];
