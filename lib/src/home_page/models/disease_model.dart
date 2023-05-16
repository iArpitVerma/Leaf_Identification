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
      case "Pepper Bell Bacterial Spot":
        possibleCauses =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        possibleSolution =
            "Spray early and often. Use copper and Mancozeb sprays.";
        break;

      case "Pepper Bell Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Potato Early Blight":
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        break;

      case "Potato Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Potato Late Blight":
        possibleCauses =
            "Occurs in humid regions with temperatures ranging between 4 and 29 °C.";
        possibleSolution =
            "Eliminating cull piles and volunteer potatoes, using proper harvesting and storage practices, and applying fungicides when necessary.";
        break;

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
        possibleSolution = "Timely application of fungicide";
        break;

      case "Tomato Leaf Mold":
        possibleCauses = "High relative humidity (greater than 85%).";
        possibleSolution =
            "Growing leaf mold resistant varieties, use drip irrigation to avoid watering foliage.";
        break;

      case "Apple Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Apple Black Rot":
        possibleCauses = "Caused by the fungus Botryosphaeria obtusa.";
        possibleSolution =
            "Treating the sites with the antibiotic streptomycin or a copper-based fungicide.";
        break;

      case "Apple Cedar Rust":
        possibleCauses =
            "Caused by the fungal pathogen Gymnosporangium juniperi-virginianae.";
        possibleSolution =
            "Timely application of fungicides with the active ingredient Myclobutanil.";
        break;

      case "Grape Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Grape Black Rot":
        possibleCauses = "Caused by the fungus Guignardia bidwellii.";
        possibleSolution =
            "Timely application of fungicides such as Mancozeb, and Ziram are all highly effective.";
        break;

      case "Grape Esca":
        possibleCauses =
            "Caused by several different fungus such as Phaeoacremonium aleophilum, Phaeomoniella chlamydospora and Fomitiporia mediterranea.";
        possibleSolution =
            "Grapevine surgery, where the grapevine trunk is cut open using a chainsaw.";
        break;

      case "Not Valid":
        possibleCauses = "Not a leaf photo.";
        possibleSolution = "Provide a leaf photo.";
        break;

      default:
        possibleCauses = "N/A";
        possibleSolution = "N/A";
        break;
    }
  }
}
