# weather_app_di

This is a weather app built with Flutter to prove how [inject.dart](https://github.com/google/inject.dart) library can be used. 

## Getting Started

This application integrates multiple advanced concepts for Flutter: fetching data from API, reactive programming, BLoC pattern and dependency injection. If dependency injection is too complicate for you at this moment, open the [WeatherAppFlutter](https://github.com/zipper-studios/WeatherAppFlutter) repository. 

A [Medium](https://medium.com/p/20d6a5918a5/edit) article explains the [Dependency Injection](https://www.freecodecamp.org/news/a-quick-intro-to-dependency-injection-what-it-is-and-when-to-use-it-7578c84fa88f/) concept from a Flutter developer perspective. It also provides a step-by-step tutorial for building this application with corresponding details of each line of code. For more details, please read the [Dependency Injection in Flutter using inject.dart package](https://medium.com/p/20d6a5918a5/edit) article.

## Basic setup
Open the app in your favorite editor and add the [inject.dart](https://github.com/google/inject.dart) library manually:

- Create a new folder in the project source directory and run the following command from this directory:

```git submodule add https://github.com/google/inject.dart```

- Run ```flutter packages get``` command in your terminal to import the inject.dart library. 

## Running
As inject works with code generation, we need to use build_runner to generate the required code. Run the following command:

```flutter packages pub run build_runner build```

Now you can run Flutter build as usual.

## Result
![alt text](https://github.com/zipper-studios/WeatherAppFlutterDependencyInjection/blob/master/screenshoots/weather_app.png)
