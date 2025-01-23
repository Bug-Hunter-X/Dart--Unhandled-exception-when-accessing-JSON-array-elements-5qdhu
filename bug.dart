```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final jsonData = jsonDecode(response.body);
      // Accessing elements using integer index. This might cause an error if the response is null or empty
      final element = jsonData[0]; //Potentially throws error if jsonData is empty or null
       print('Element: $element');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```