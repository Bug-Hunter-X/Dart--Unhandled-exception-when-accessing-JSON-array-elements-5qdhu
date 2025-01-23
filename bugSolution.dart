```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if jsonData is null or empty before accessing elements
      if (jsonData != null && jsonData.isNotEmpty) {
        final element = jsonData[0];
        print('Element: $element');
      } else {
        print('JSON data is null or empty.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```