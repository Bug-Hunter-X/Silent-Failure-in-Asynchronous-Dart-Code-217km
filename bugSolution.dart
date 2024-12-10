```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      //Example of further processing:
      //processJsonData(jsonData);
    } else {
      //Instead of throwing a generic exception provide more context
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on SocketException catch (e) {
    //Handle network errors separately
    print('Network error: $e');
    //Show a user friendly message, implement retry logic
  } on FormatException catch (e) {
      //Handle JSON decoding errors
      print('JSON decoding error: $e');
  } catch (e) {
    // Handle other exceptions (e.g., server errors)
    print('An unexpected error occurred: $e');
    // Consider showing a more user friendly error message here.
  }
}
//Example function to handle processed JSON data.
void processJsonData(dynamic jsonData){
  //Add your logic to process the JSON data
  print(jsonData);
}
```