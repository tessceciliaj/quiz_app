# Quiz App

## Overview
- This Flutter project, the *Quiz App*, is designed to facilitate learning foundational Flutter concepts. The application aims to create a quiz experience by presenting questions and allowing users to answer them.
- **Course:** [Flutter & Dart - The Complete Guide [2024 Edition]](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## Day One
### Widget Space Control
Use `SizedBox(height: <number>)` to create space between elements.

### Icons
Utilize `Icons.<icon>` with the `Icon()` function. Get a list and preview of available Flutter icons by typing `Icons.`.

### Opacity
Wrap widgets with `Opacity` for transparency or modify image color with opacity.

### State Management
- Introduced Stateful Widgets and their lifecycle methods: `initState()`, `build()`, and `dispose()`.
- Demonstrated conditional rendering and lifting state up with `initState()` and changing screens.

### Flutter Widget Lifecycle
- Understood the essential lifecycle methods for stateful widgets: `initState()`, `build()`, and `dispose()`.

### Conditional List Building
Used `if` inside lists to conditionally add items and specified `else` cases. Employed ternary expressions for list item addition based on conditions.

### Widening Widgets
Set width to `double.infinity` for widgets to expand fully.

### Dynamic List Operations
- Accessed list values dynamically.
- Utilized spread values and mapping to populate widgets from a list dynamically.

# Day two

## New Features & Concepts

### Google Fonts Integration
- **Package:** [google_fonts](https://pub.dev/packages/google_fonts)
- **Implementation:**
  - Added Google Fonts package to the project.
  - Imported `google_fonts.dart` in the file.
  - Utilized `GoogleFonts.<fontFamily>()` to apply fonts.

### Working with Lists and Maps
- **List Manipulation:**
  - Added values to a list with `selectedAnswer.add(answer)`.
  - Created a function that requires and returns a string.
- **Map Usage:**
  - Utilized maps to summarize quiz data.
  - Used a `for` loop to create a list of maps.
  - Learned about the object type and the use of `final` variables.

### Lists and `for` Loops
- Demonstrated adding items to lists using the `for ... in` loop.
- Highlighted the usage of `for ... in` loops to add items from a list to another list.
- Showcased how `for ... in` loops can replace `map()` and the spread operator.

### List Filtering and String Conversion
- Employed `.where()` method to filter a list based on conditions.
- Converted integer values to strings using `.toString()`.

### Flutter Widgets Overview
- Utilized `Expanded()` widget to expand a child of `Row`, `Column`, or `Flex`.
- Implemented `SingleChildScrollView()` to handle scrollable content.

### Iterable and Scrolling Widgets
- Demonstrated converting an `Iterable` to a list using `.toList()`.
- Utilized `SingleChildScrollView()` to enable scrolling for overflowed content.

## Code Samples

Here are some snippets demonstrating key functionalities:

```dart
// Google Fonts Application
style: GoogleFonts.poppins(fontSize: 16),

 //List and Map Manipulation
final List<String> selectedAnswer = [];

void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
} 


// for ... in Loop in Lists
final numbers = [5, 6];
final myList = [
  1,
  2,
  for (final num in numbers) num,
];


//Map Filtering and String Conversion
Text(((data['question_index'] as int) + 1).toString())
```

# Day 3: Quiz App

## Additional Concepts

### Color Change with Ternary Expression
- Changed color based on the correct answer using a ternary expression within a `Container()` widget.

### Private Widgets and Methods
- Employed leading underscores `_` to indicate private widgets and methods.

### `get` Method Usage
- Utilized the `get` method as a property with the ability to execute like a method.

### Completion and Reflection
- Marked completion of the Quiz App project, acknowledging the extended duration for detailed note-taking, replays, and research.

## Code Samples

Here are some snippets from Day 3 demonstrating key functionalities:

```dart
// Color Change with Ternary Expression
return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 133, 255, 149)
            : const Color.fromARGB(255, 255, 159, 193),
      ),
    );

// Private Widgets and Methods
List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      // Dart syntax for creating a map
      // Save these values i a map
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

