class ShoesModelsModel {
  final int id;
  final String modelNumber;
 // final String image;

  ShoesModelsModel({
    required this.id,
    required this.modelNumber,
   // required this.image,
  });

  factory ShoesModelsModel.fromJson(Map<String, dynamic> json) {
    return ShoesModelsModel(
      id: json['id'],
      modelNumber: json['model_number'],
    //  image: json['image'],
    );
  }
}
