# Dart: Unhandled exception when accessing JSON array elements

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access elements of a JSON array without checking for null or empty arrays.

## Problem
The `fetchData` function fetches data from an API.  It assumes the response body is a JSON array and accesses the first element using `jsonData[0]`. This is problematic because:

1. **Null response:** The API might not return any data, resulting in `jsonData` being null.
2. **Empty array:** The API might return an empty JSON array (`[]`).

In either case, attempting to access `jsonData[0]` will throw an exception, causing the application to crash.

## Solution
The solution involves adding checks to handle null or empty cases before accessing elements.

## Usage
1. Clone the repository.
2. Run `fetchData()`.
3. Observe the error (if any).
4. Examine the improved code in `bugSolution.dart` to see how to resolve the exception.