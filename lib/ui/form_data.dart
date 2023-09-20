import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController birthYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: nimController,
              decoration: InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              controller: birthYearController,
              decoration: InputDecoration(labelText: 'Tahun Lahir'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle form submission here
                String name = nameController.text;
                String nim = nimController.text;
                String birthYear = birthYearController.text;

                // Navigate to the display data page with the entered data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TampilData(
                      name: name,
                      nim: nim,
                      birthYear: birthYear,
                    ),
                  ),
                );
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}