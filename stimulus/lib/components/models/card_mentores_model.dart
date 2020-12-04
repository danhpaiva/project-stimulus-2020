class ModelCardMentores {
  final String imagemPerfil;
  final String nomeMentor;
  final String areaMentor;
  final String classificacaoMentor;

  ModelCardMentores(
      {this.imagemPerfil,
      this.nomeMentor,
      this.areaMentor,
      this.classificacaoMentor});

  factory ModelCardMentores.fromJson(Map<String, dynamic> json) {
    return ModelCardMentores(
      imagemPerfil: json['imagemPerfil'],
      nomeMentor: json['nomeMentor'],
      areaMentor: json['areaMentor'],
      classificacaoMentor: json['classificacaoMentor'],
    );
  }
}
