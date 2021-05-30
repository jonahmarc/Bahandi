class Question {
  final int id, answer;
  final String question, image;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.image});
}

const List sample_data = [
  {
    "id": 1,
    "question": "n. police",
    "image": "assets/cebuano_pictures/pulis.png",
    "options": ['maistra', 'pulis', 'pursinto', 'maistru'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "n. female teacher",
    "image": "assets/cebuano_pictures/maistra.gif",
    "options": ['tudlu', 'pulis', 'maistra', 'maistru'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "n. clock",
    "image": "assets/cebuano_pictures/rilu.png",
    "options": ['ritratu', 'tinidor', 'rilu', 'telepono'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "n. milk",
    "image": "assets/cebuano_pictures/gatas.png",
    "options": ['gamut', 'gupuk', 'gatas', 'galun'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "n. cigarette",
    "image": "assets/cebuano_pictures/sigarilyo.png",
    "options": ['salup', 'sanggab', 'sapatos', 'sigarilyo'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "n. table",
    "image": "assets/cebuano_pictures/lamisa.png",
    "options": ['lamisa', 'lansang', 'lamanu', 'kwintas'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "n. run",
    "image": "assets/cebuano_pictures/dalagan.gif",
    "options": ['lakaw', 'dalagan', 'dakdak', 'bayabas'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "n. flood",
    "image": "assets/cebuano_pictures/Baha.gif",
    "options": ['baba', 'baka', 'baha', 'bahada'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "n. circle",
    "image": "assets/cebuano_pictures/lingin.png",
    "options": ['sayans', 'payong', 'piriku', 'lingin'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "n. comb",
    "image": "assets/cebuano_pictures/sudlay.png",
    "options": ['sudlay', 'sipilya', 'sipir', 'suga'],
    "answer_index": 0,
  },
];
