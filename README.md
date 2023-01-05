# movie_ui_sample

This project is made for a workshop in Google Developer Group Hong Kong back in 2019.

It show a detailed steps for making a Flutter UI for movie description.

[https://www.meetup.com/gdg-hong-kong/events/265650639/](https://www.meetup.com/gdg-hong-kong/events/265650639/)




<img src="https://github.com/mingchoi/flutter_movie_ui_tutorial/blob/master/preview.jpg" width="301" height="640">

## How to use this repo
Option 1:
To view this project in specific step, click the `Branch` button above and switch to `Tags` tab.

Option 2:
Click releases and downloads source code of specific step.

## Getting Started
#### 1. Create New Flutter Project (Application)
#### 2. Edit `pubspec.yaml` and add these dependency:
```
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2

  # api library
  http: ^0.12.0
  rxdart: ^0.22.3

  # state management
  bloc: ^0.14.0
  flutter_bloc: ^0.20.0
  ```
#### 3. Click `Get Dependency` on the top to install them

#### 4. Copy these folders to your project
- lib/bloc
- lib/data
- lib/model
- lib/util
- lib/widget

#### 5. You are ready! Open main.dart to start your practice

## Inspired by
`roughike/movie-details-ui`
