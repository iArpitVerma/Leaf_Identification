# Plant Disease Detector


## Goal

The objective of this repository is to understand how to integrate and use machine learning models with Flutter. 


## What is this project

A Flutter app that detects a plant's disease given a photo of an affected part of the plant.


![Finished App](https://github.com/iArpitVerma/Plant_Disease_Detection/blob/main/plant_disease_detection.gif)


## How to setup the project

- Clone or download the repository.
- Open it in VSCode or Android Studio 
- Go to pubspec.yaml and click on 'Pub get' to download all the dependencies used in project.
- Use and Modify the project as per your choice.


## Usage

- On launching the application, you will be presented with the usage instructons. It follows that to get a suggestion of a disease affecting a plant of interest, select a photo of the plant from your `gallery`.
- The application then runs the TFLITE model in the background to get a suggestion of the disease.
- It displays the results on the next screen `Suggestions`.


## Important to note

- The `tflite` model has been trained to detect only a subset of the diseases. They include:
    - Pepper Bell Bacterial Spot
    - Pepper Bell Healthy
    - Potato Early Blight
    - Potato Healthy
    - Potato Late Blight
    - Tomato Bacterial Spot
    - Tomato Early Blight
    - Tomato Healthy
    - Tomato Late Blight
    - Tomato Leaf Mold
    - Tomato Septoria Leaf Spot
    - Tomato Spotted Spider Mites
    - Tomato Target Spot
    - Tomato Mosaic Virus
    - Tomato Yellow Leaf Curl Virus
- The size of the dataset was only sufficient enough to make the model recognize selected  diseases, but it faces problems with images of non-plants.
- The dataset was from [KAGGLE](https://www.kaggle.com/saroz014/plant-diseases).


## Contributing

Contributions towards the project are welcome.
Specifically:
- The `tflite` model used can be replaced with a more accurate one/one with more diseases.
- The responsiveness of the application can be improved.
- Warning messages can be added for non-plant inputs made by users.


## Project Status

- The requirements I set have been made possible. However, the application can still be improved.
- Additions/improvements can be made as specified in the `Contributing` section.