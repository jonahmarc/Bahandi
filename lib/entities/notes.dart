class Note {
  String word;
  String eng;
  String img;
  String typ_spch;
  String def;

  Note(this.word, this.eng, this.img, this.typ_spch, this.def);

  Note.fromJson(Map<String, dynamic> json) {
    word = json["word"];
    eng = json["eng"];
    img = json["img"];
    typ_spch = json["tpy_soch"];
    def = json["def"];
  }
}
