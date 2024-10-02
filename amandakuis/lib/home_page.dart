import 'package:flutter/material.dart';
import 'dummy-fakultas.dart'; // Mengimpor data fakultas
import 'detail_page.dart'; // Mengimpor halaman detail

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, $username'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[100], // Warna latar belakang
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selamat datang di UPN Veteran Yogyakarta!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: facultyList.length,
                itemBuilder: (context, index) {
                  final faculty = facultyList[index];
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(faculty.name),
                      subtitle: Text(
                          'Jumlah Program Studi: ${faculty.numberOfMajors}\nJumlah Mahasiswa: ${faculty.numberOfStudents}'),
                      leading: Image.asset(faculty.imageAsset,
                          width: 50, height: 50),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(faculty: faculty),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
