import 'package:flutter/material.dart';


class input_dataanak extends StatefulWidget {
  @override
  _input_dataanak createState() => _input_dataanak();
}

class _input_dataanak extends State<input_dataanak> {
 final _formKey = GlobalKey<FormState>();
final _nameController = TextEditingController();
final _temperatureController = TextEditingController();
final _dateController = TextEditingController();
final _arrivalController = TextEditingController();
final _conditionsController = TextEditingController();
bool _rememberMe = false;


void _submitInfo() {
  if (_formKey.currentState!.validate()) {
    String name = _nameController.text;
    String temperature = _temperatureController.text;
    String date = _dateController.text;
    String arrival = _arrivalController.text;
    String conditions = _conditionsController.text;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Information Submitted'),
          content: Text(
            'Name: $name\n'
            'Temperature: $temperature\n'
            'Date: $date\n'
            'Arrival: $arrival\n'
            'Remember Me: $_rememberMe\n'
            'Conditions: $conditions',
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Input Data Anak'),
      backgroundColor: Colors.green,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                fillColor: _nameController.text.isEmpty
                    ? Color.fromARGB(255, 93, 192, 89)
                    : Color.fromARGB(255, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama harus diisi';
                }
                return null;
              },
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(height: 20),
            // section Temperatur
            TextFormField(
              controller: _temperatureController,
              decoration: InputDecoration(
                labelText: 'Temperatur',
                fillColor: _temperatureController.text.isEmpty
                    ? Color.fromARGB(255, 93, 192, 89)
                    : Color.fromARGB(255, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Suhu Badan harus diisi';
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Date',
                fillColor: _dateController.text.isEmpty
                    ? Color.fromARGB(255, 93, 192, 89)
                    : Color.fromARGB(255, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Tanggal Penitipan harus diisi';
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _arrivalController,
              decoration: InputDecoration(
                labelText: 'Arrival',
                fillColor: _arrivalController.text.isEmpty
                    ? Color.fromARGB(255, 93, 192, 89)
                    : Color.fromARGB(255, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Kedatangan harus diisi';
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          
            SizedBox(height: 20),
            TextFormField(
              controller: _conditionsController,
              decoration: InputDecoration(
                labelText: 'Kondisi',
                fillColor: _conditionsController.text.isEmpty
                    ? Color.fromARGB(255, 93, 192, 89)
                    : Color.fromARGB(255, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Kondisi harus diisi';
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                ),
                Text('Remember me'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitInfo,
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
