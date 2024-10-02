import 'package:flutter/material.dart';
import 'dummy-fakultas.dart'; // Mengimpor model fakultas

class DetailPage extends StatelessWidget {
  final Faculty faculty;

  DetailPage({required this.faculty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(faculty.name),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan gambar fakultas utama
            Image.asset(faculty.imageAsset, fit: BoxFit.cover),
            SizedBox(height: 16),

            SizedBox(height: 16),
            // Menampilkan gambar gedung UPN
            Image.asset('images/upn.jpg', fit: BoxFit.cover),
            SizedBox(height: 16),
            // Deskripsi Arah Pendidikan
            Text(
              'Arah Pendidikan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Arah pendidikan UPN ”Veteran” Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi dalam rangka terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Deskripsi Tujuan Pendidikan
            Text(
              'Tujuan Pendidikan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Pendidikan di UPN ”Veteran” Yogyakarta bertujuan untuk:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan berdaya saing global yang memiliki jiwa disiplin, berdaya juang, dan kreatif serta berwawasan kebangsaan dan mampu menjadi komponen pendukung dalam sistem pertahanan negara;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Meningkatkan kuantitas dan kualitas penelitian guna:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   a. Menunjang pengembangan mutu pendidikan dan pengajaran;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   b. Mengembangkan dan menerapkan ilmu pengetahuan dan teknologi (IPTEK) untuk menunjang pengabdian kepada masyarakat;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   c. Menghasilkan modal intelektual dan karya ilmiah dalam rangka menunjang pembangunan nasional;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Pengembangan kegiatan pengabdian kepada masyarakat melalui:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   a. Penyediaan layanan ilmu pengetahuan dan teknologi (IPTEK) dalam rangka meningkatkan kesejahteraan masyarakat;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   b. Peningkatan keberdayaan masyarakat;',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   c. Peningkatan reputasi UPN ”Veteran” Yogyakarta.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
