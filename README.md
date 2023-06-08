# Leaf Identication


## Goal

The objective of this repository is to understand how to integrate and use machine learning models with Flutter. 


## What is this project

A Flutter app that detects a type of leaf given a photo of an unknown leaf.


![Finished App](https://github.com/iArpitVerma/Plant_Disease_Detection/blob/main/app.gif)


## Download APK

You can download the latest version of APK [LINK](https://github.com/iArpitVerma/Leaf_Identification/releases/tag/v3.0.0).


## How to setup the project

- Clone or download the repository.
- Open it in VSCode or Android Studio 
- Go to pubspec.yaml and click on 'Pub get' to download all the dependencies used in project.
- Use and Modify the project as per your choice.


## Usage

- On launching the application, you will be presented with the instructions column.
- The application then runs the TFLITE model in the background to get the name of unknown leaf.
- It displays the results on the next screen `Suggestions`.


## Important to note

- The `tflite` model has been trained to detect only a subset of the leaves. This includes:
    - Apple
    - Grape
    - Peach
    - Pepper
    - Potato
    - Tomato
    - Not Valid
- The size of the dataset was around 5,000 photos which is sufficient enough to make the model recognize selected  
- The dataset was taken from KAGGLE.


## Contributing

Contributions towards the project are welcome.
Specifically:
- The `tflite` model used can be replaced with a more accurate one/one with more leaves.
- The responsiveness of the application can be improved.
- The app can be trained on a more extensive dataset to include more types of leaves and their diseases.


## Project Status

- The requirements I set have been made possible. However, the application can still be improved.
- Additions/improvements can be made as specified in the `Contributing` section.