class Question {
  final int id, answer;
  final String question, image;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.image});
}

const List sample_data = [
  {
    "id": 1,
    "question": "n. shoes",
    "image": "assets/cebuano_pictures/sapatos.png",
    "options": ['tigib', 'sapatos', 'tsinilas', 'sipilya'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "n. bubbles",
    "image": "assets/cebuano_pictures/bula.png",
    "options": ['bayuuk', 'botelya', 'bula', 'buaya'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "n. eight",
    "image": "assets/cebuano_pictures/otso.png",
    "options": ['tres', 'say-is', 'otso', 'syete'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "n. nine",
    "image": "assets/cebuano_pictures/noybe.png",
    "options": ['uno', 'otso', 'noybe', 'syete'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "n. one",
    "image": "assets/cebuano_pictures/uno.png",
    "options": ['syete', 'say-is', 'noybe', 'uno'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "n. fork",
    "image": "assets/cebuano_pictures/tinidor.png",
    "options": ['tinidor', 'kutsara', 'pusing', 'pipa'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "n. slippers",
    "image": "assets/cebuano_pictures/tsinilas.png",
    "options": ['sapatos', 'tsinilas', 'taup', 'bayabas'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "n. three",
    "image": "assets/cebuano_pictures/tres.png",
    "options": ['tawag', 'uno', 'tres', 'kahoy'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "n. stomach",
    "image": "assets/cebuano_pictures/Tiyan.png",
    "options": ['tiki', 'tudlu', 'tiil', 'tiyan'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "n. sun",
    "image": "assets/cebuano_pictures/adlaw.png",
    "options": ['adlaw', 'agila', 'alun', 'asin'],
    "answer_index": 0,
  },
];
