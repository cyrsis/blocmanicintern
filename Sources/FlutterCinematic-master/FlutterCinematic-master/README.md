# Flutter Cinematic

This app is a Flutter port of the native Android App [Cinematic](https://github.com/aaronoe/Cinematic).
My intention in creating this app was understanding the intricacies of building apps in Flutter.
Just like the native Android App this app does **not make any efforts in being a nicely architectured application**.
That being said the whole point is to showcase Flutter's capabilities for building simple apps 
and to understand key difference and advantages to native development.

## Overview

The app uses the [Movie DB Public API](https://www.themoviedb.org/documentation/api) as a data 
sources and uses the standard dart libraries for making network requests.

In terms of UI, the goal was replicating the Android design as closely as possible to understand
the possibilities that Flutter offers for crafting UIs.

## Building from Source

To build this app from source you will have to obtain an API-key from [TMDB right here](https://developers.themoviedb.org/3/getting-started/introduction).
Set this key to the constant `API_KEY` in `constants.dart` to run the app.
Additionally, the app now uses Dart2 which means that you should enable that in your IDE if you haven't done so yet.

## Video

![In App Experience](https://github.com/aaronoe/FlutterCinematic/blob/master/screenshots/flutter_cinematic_gif.gif?raw=true)

## Learnings

Creating this app and learning Flutter in general felt like a gift for developers.
It significantly increased development velocity by, amongst others, 
reducing development cycles and the ability to create reactive, modular components.
Coming from the realms of Android, those are the things that stood out to me:
- Creating beautiful UIs is easier with Flutter
- Avoiding to write boilerplate code (XML layouts, adapters etc.)
- Creating UIs in a declarative way without dealing with the shortcomings of Android's Databinding
- Hot Reload - this one is a **game-changer**
- Dart is not that bad of a language, but it doesn't get close to Kotlin. 
I think for the Usecase of Flutter Dart actually makes a lot of sense
- The ability to not worry about state changes in the UI. The Widget will take care of the rendering 
using it's properties or state

## License

This project utilizes the [MIT License](https://github.com/aaronoe/FlutterCinematic/blob/master/LICENSE "Project License")