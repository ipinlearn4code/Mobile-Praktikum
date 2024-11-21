import 'dart:convert'; // For Base64 encoding
import 'package:http/http.dart' as http;

void fetchPPPSecrets() async {
  var username = 'cahganteng';
  var password = 'asalkampung';
  
  // Encode the credentials in Base64 for Basic Auth
  String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));

  // Send the GET request to the MikroTik REST API
  var response = await http.get(
    Uri.parse('http://103.217.216.34/rest/ppp/secret'),
    headers: <String, String>{
      'Authorization': basicAuth,
    },
  );

  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Failed to fetch data. Status code: ${response.statusCode}');
  }
}
