class Question {
  final int id, answer;
  final String question, image;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.image});
}

const List sample_data = [
  {
    "id": 1,
    "question": "n. crocodile",
    "image": "assets/cebuano_pictures/buaya.png",
    "options": ['bayuuk', 'buaya', 'baka', 'buwak'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "n. thousand",
    "image": "assets/cebuano_pictures/libu.png",
    "options": ['tudlu', 'pulis', 'libu', 'maistru'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "n. zipper",
    "image": "assets/cebuano_pictures/sipir.png",
    "options": ['singsing', 'tinidor', 'sipir', 'sinisiru'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "n. lizard",
    "image": "assets/cebuano_pictures/tiki.png",
    "options": ['taup', 'tigib', 'tiki', 'tikling'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "n. long-legged bird, the barred rail",
    "image": "assets/cebuano_pictures/tikling.png",
    "options": ['sawa', 'baka', 'tiki', 'tikling'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "n. worm",
    "image": "assets/cebuano_pictures/ulod.png",
    "options": ['ulud', 'tiki', 'tikling', 'sawa'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "n. science",
    "image": "assets/cebuano_pictures/sayans.png",
    "options": ['say-is', 'sayans', 'sawa', 'sandayung'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "n. lacking one or a few teeth",
    "image": "assets/cebuano_pictures/pangag.png",
    "options": ['patatas', 'pala', 'pangag', 'pana'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "n. squash",
    "image": "assets/cebuano_pictures/kalabasa.png",
    "options": ['kapayas', 'kaymitu', 'saging', 'kalabasa'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "n. flowerpot",
    "image": "assets/cebuano_pictures/kaang.png",
    "options": ['kaang', 'sipilya', 'kaldiro', 'kamil'],
    "answer_index": 0,
  },
];
