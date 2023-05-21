import 'package:hive/hive.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 0)
class Disease extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  late String possibleCauses;

  @HiveField(2)
  late String possibleSolution;

  @HiveField(3)
  late String imagePath;

  @HiveField(4)
  late DateTime dateTime;

  Disease({required this.name, required this.imagePath}) {
    dateTime = DateTime.now();

    switch (name) {
      case "Tomato Early Blight":
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        break;

      case "Tomato Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Tomato Late Blight":
        possibleCauses = "Caused by the water mold Phytophthora infestans.";
        possibleSolution = "Timely application of fungicide.";
        break;

      case "Tomato Leaf Mold":
        possibleCauses = "High relative humidity (greater than 85%).";
        possibleSolution =
            "Growing leaf mold resistant varieties, use drip irrigation to avoid watering foliage.";
        break;

      case "Tomato Target Spot":
        possibleCauses =
            "Caused by the fungal pathogen Corynespora cassiicola.";
        possibleSolution =
            "Regular application of fungicides such as chlorothalonil, copper oxychloride or mancozeb.";
        break;

      case "Tomato Spider Mites":
        possibleCauses =
            "Heat, drought, water stress, the presence of a large number of weeds, and incorrect use of insecticides.";
        possibleSolution =
            "Washing plant foliage using a soft cloth or a forceful spray of lukewarm water.";
        break;

      case "Tomato Septoria Leaf Spot":
        possibleCauses = "Caused by the fungus Septoria lycopersici.";
        possibleSolution =
            "Fungicides containing either copper or potassium bicarbonate will help.";
        break;

      case "Tomato Bacterial Spot":
        possibleCauses = "Prolonged periods of high relative humidity and wetness.";
        possibleSolution =
            "Pesticide containing copper products or copper plus mancozeb are effective.";
        break;

      case "Not Valid":
        possibleCauses = "Not a leaf photo.";
        possibleSolution = "Please provide a leaf photo.";
        break;

      default:
        possibleCauses = "N/A";
        possibleSolution = "N/A";
        break;
    }
  }
}
