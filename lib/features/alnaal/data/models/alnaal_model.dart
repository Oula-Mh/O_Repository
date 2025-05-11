class AlnaalModel{

  final int id;
  final int modelId;
  final String alnaalNumber;
  // final String image;

  AlnaalModel({
    required this.id,
    required this.modelId,
    required this.alnaalNumber,
    // required this.image,
  });

  factory AlnaalModel.fromJson(Map<String, dynamic> json) {
    return AlnaalModel(
      id: json['id'],
      modelId: json['moodel_id'],
      alnaalNumber: json['shoe_number'],
      //  image: json['image'],
    );
  }
}