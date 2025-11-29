import 'package:flutter/material.dart';
import 'package:panduan_wisata_app/detail_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      {
        'name': 'Masjid Raya Baiturrahman',
        'region': 'Sumatera',
        'location': 'Banda Aceh, Aceh',
        'image': 'assets/baiturrahman_mosque_banda_aceh.jpg',
        'description':
            'Ikon kota Banda Aceh yang memadukan arsitektur Mughal dan kolonial.',
        'food': 'Kuah Pliek U, Ayam Tangkap',
        'culture': 'Tari Saman, hikayat Aceh',
        'language': 'Bahasa Aceh',
        'house': 'Rumoh Aceh',
        'clothes': 'Baju Kurung, Meukeutop',
        'rating': 4.8,
      },
      {
        'name': 'Danau Toba',
        'region': 'Sumatera',
        'location': 'Sumatera Utara',
        'image': 'assets/danau_toba_sumatera_utara.webp',
        'description':
            'Danau vulkanik terbesar di dunia dengan Pulau Samosir di tengahnya.',
        'food': 'Arsik Ikan Mas, Saksang',
        'culture': 'Gondang, Tortor Batak',
        'language': 'Bahasa Batak',
        'house': 'Rumah Bolon',
        'clothes': 'Ulos Batak',
        'rating': 4.9,
      },
      {
        'name': 'Taman Mini Indonesia Indah',
        'region': 'Jawa',
        'location': 'Jakarta Timur',
        'image': 'assets/taman_mini_jakarta.webp',
        'description':
            'Taman yang merangkum rumah adat, museum, dan budaya tiap provinsi.',
        'food': 'Kerak Telor, Asinan Betawi',
        'culture': 'Lenong, Ondel-ondel',
        'language': 'Bahasa Betawi',
        'house': 'Rumah Kebaya',
        'clothes': 'Baju Sadariah',
        'rating': 4.7,
      },
      {
        'name': 'Wisata Bali Heritage',
        'region': 'Bali',
        'location': 'Badung & Gianyar',
        'image': 'assets/wisata_bali.jpg',
        'description':
            'Perpaduan pantai, pura, dan sawah berundak khas Pulau Dewata.',
        'food': 'Ayam Betutu, Lawar',
        'culture': 'Tari Kecak, Ngaben',
        'language': 'Bahasa Bali',
        'house': 'Rumah Pekarangan',
        'clothes': 'Kebaya Bali',
        'rating': 5.0,
      },
      {
        'name': 'Borneo Park',
        'region': 'Kalimantan',
        'location': 'Banjarbaru',
        'image': 'assets/borneo_park_kalimantan.jpeg',
        'description': 'Taman keluarga dengan replika rumah panjang Dayak.',
        'food': 'Soto Banjar, Mandai',
        'culture': 'Upacara Tiwah',
        'language': 'Bahasa Banjar',
        'house': 'Rumah Lamin',
        'clothes': 'King Baba & Ta\'a',
        'rating': 4.5,
      },
      {
        'name': 'Eksotika Sulawesi',
        'region': 'Sulawesi',
        'location': 'Tana Toraja',
        'image': 'assets/rumah_adat_sulawesi.webp',
        'description': 'Rumah tongkonan dan ritual Rambu Solo\' yang unik.',
        'food': 'Pa\'piong, Dangkot',
        'culture': 'Ma\'badong, ukiran Toraja',
        'language': 'Bahasa Toraja',
        'house': 'Tongkonan',
        'clothes': 'Seppa Tallung Buku',
        'rating': 4.9,
      },
      {
        'name': 'Raja Ampat Panorama',
        'region': 'Papua',
        'location': 'Raja Ampat',
        'image': 'assets/wisata_papua.jpg',
        'description': 'Gugusan karst dan laut sebening kaca penuh biota.',
        'food': 'Papeda Kuah Kuning',
        'culture': 'Tari Yospan, Tifa',
        'language': 'Bahasa Maya',
        'house': 'Rumah Kaki Seribu',
        'clothes': 'Koteka & Rok Rumbai',
        'rating': 5.0,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Dasbor Wisata")),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: image.length,
        itemBuilder: (context, index) {
          var getData = image[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    getData: [
                      getData['image'], // 0
                      getData['name'], //1
                      getData['region'], //2
                      getData['location'], //3
                      getData['rating'], //4
                      getData['description'], //5
                      getData['food'], //6
                      getData['culture'], //7
                      getData['language'], //8
                      getData['house'], //9
                      getData['clothes'], //10
                    ],
                  ),
                ),
              );
            },
            title: SizedBox(child: Card(child: Image.asset(getData['image']))),
          );
        },
      ),
    );
  }
}
