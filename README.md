# Silent Failure in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming:  inadequate exception handling in `async` functions. The `bug.dart` file shows code that catches exceptions during a network request but doesn't handle them robustly. The `bugSolution.dart` file provides improved exception handling.

## Bug Description

The original code catches exceptions within a `try-catch` block, but simply prints the error message to the console.  In a production application, this is insufficient.  A better approach would involve notifying the user of the error, retrying the operation, or providing alternative functionality.