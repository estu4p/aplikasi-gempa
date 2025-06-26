import 'package:flutter/material.dart';
import 'package:gempa/components/details_page/bullet_list.dart';
import 'package:gempa/components/details_page/first_paragraf.dart';
import 'package:gempa/components/details_page/paragraf.dart';
import 'package:gempa/components/details_page/title_bab.dart';
import 'package:gempa/components/details_page/title_subbab.dart';
import 'package:gempa/models/data.dart';

List<Data> DataGempa = [
  // Definisi gempa bumi
  Data(
    id: 1,
    title: 'Definisi gempa bumi',
    icon: 'assets/icons/earth.png',
    image: 'assets/images/gempa2.jpeg',
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // const Text(
        //   '1. Definisi gempa bumi',
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        const FirstParagraf(
          first_font: 'G',
          text: 'empa bumi adalah peristiwa bergetarnya permukaan bumi yang',
        ),
        Transform.translate(
          offset: const Offset(0, -8),
          child: const Text(
            'disebabkan oleh pelepasan energi secara tiba-tiba dari dalam lapisan bumi, biasanya akibat pergerakan lempeng tektonik. Energi yang dilepaskan ini merambat dalam bentuk gelombang seismik, sehingga menimbulkan getaran yang bisa dirasakan di permukaan.',
            textAlign: TextAlign.justify,
          ),
        ),
        const TitleBab(title: 'Jenis-jenis dan Penyebab Gempa Bumi'),
        const Paragraf(
          text:
              'Menurut Suara et al., (2023) Berdasarkan penyebabnya, gempa bumi dibagi menjadi lima jenis, antara lain : ',
        ),
        const TitleSubBab(title: '1) Gempa bumi Gunung Berapi'),
        const Paragraf(
            text:
                'Gempa bumi gunung berapi adalah gempa yang disebabkan oleh aktivitas magma di dalam gunung berapi. Gempa ini terjadi saat magma naik ke permukaan, menyebabkan tekanan dan retakan pada batuan di sekitarnya. Biasanya terjadi sebelum letusan gunung dan bersifat lokal di sekitar area vulkanik.'),
        const TitleSubBab(title: '2) Gempa bumi Tektonik'),
        const Paragraf(
          text:
              'Gempa bumi tektonik adalah gempa yang terjadi akibat pergeseran lempeng tektonik di kerak bumi. Ketika dua lempeng saling bertumbukan, bergeser, atau menjauh, energi yang terkumpul dilepaskan dalam bentuk getaran. Jenis gempa ini paling sering terjadi dan memiliki kekuatan yang besar serta dampak yang luas.',
        ),
        const TitleSubBab(title: '3) Gempa bumi Tumbukan'),
        const Paragraf(
          text:
              'Gempa bumi tumbukan adalah gempa yang terjadi akibat benturan benda langit seperti meteorit atau asteroid yang jatuh dan menabrak permukaan bumi. Energi dari tumbukan tersebut menghasilkan getaran yang mirip dengan gempa bumi, meskipun jarang terjadi dan bersifat lokal.',
        ),
        const TitleSubBab(
          title: '4) Gempa bumi Runtuhan',
        ),
        const Paragraf(
          text:
              'Gempa bumi runtuhan adalah gempa yang terjadi akibat runtuhnya struktur geologi seperti gua atau terowongan. Ketika tekanan internal batuan melebihi kekuatan strukturnya, akan terjadi runtuhan yang menghasilkan getaran.',
        ),
        const TitleSubBab(
          title: '5) Gempa bumi Buatan',
        ),
        const Paragraf(
          text:
              'Gempa bumi buatan adalah gempa yang disebabkan oleh aktivitas manusia, seperti peledakan dinamit, uji coba nuklir, pengeboran minyak, atau pembangunan bendungan besar. Meskipun kekuatannya biasanya lebih kecil dibandingkan gempa alam, dampaknya tetap bisa dirasakan di sekitar lokasi kejadian.',
        ),
        const TitleBab(
          title:
              'Karakteristik gempa bumi di wilayah Daerah Istimewa Yogyakarta (DIY)',
          marginBottom: 2.0,
        ),
        const TitleSubBab(
          title: '1) Letak Geografis dan Tektonik',
        ),
        const Paragraf(
          text:
              'DIY terletak di bagian selatan Pulau Jawa, berbatasan langsung dengan Samudera Hindia, dan berada di zona pertemuan dua lempeng besar: IndoAustralia dan Eurasia. Zona subduksi ini sangat aktif dan menjadi sumber utama gempa bumi di wilayah ini.',
        ),
        const SizedBox(height: 4),
        const Paragraf(
            text:
                'Selain itu, terdapat aktivitas sesar-sesar lokal di daratan, terutama Sesar Opak yang sangat aktif dan memanjang dari Bantul hingga Klaten.'),
        const TitleSubBab(title: '2) Jenis dan Sumber Gempa'),
        const Paragraf(
          text:
              'Gempa bumi di DIY umumnya bersifat dangkal dengan kedalaman kurang dari 60 km, yang berpotensi menimbulkan kerusakan besar pada permukaan.',
        ),
        const TitleBab(title: 'Sumber gempa utama meliputi:'),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Sesar Opak: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              TextSpan(
                text:
                    'Sumber utama gempa merusak, seperti pada gempa 2006, dengan potensi magnitudo hingga 6,6',
              ),
            ],
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Lempeng Megathrust: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              TextSpan(
                text:
                    ' Berpotensi menimbulkan gempa sangat besar hingga magnitudo',
              ),
            ],
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Sesar Lain: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              TextSpan(
                text:
                    'Termasuk Sesar Dengkeng, Oya, Progo, dan Mataram yang juga berpotensi memicu gempa bumi',
              ),
            ],
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  ),
  // Dampak gempa bumi
  Data(
    id: 2,
    title: 'Dampak Gempa Bumi',
    icon: 'assets/icons/crake.png',
    image: 'assets/images/dampakgempa.jpeg',
    content: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FirstParagraf(
          first_font: 'D',
          text:
              'ampak gempa bumi terhadap lingkungan, infrastruktur, dan manusia : ',
        ),
        TitleSubBab(title: '1) Dampak terhadap manusia : '),
        BulletList(
            text:
                'Perubahan bentang alam: Terjadi retakan tanah, longsor, dan penurunan tanah (subsiden).'),
        BulletList(
            text:
                'Kerusakan ekosistem: Gangguan pada habitat hewan dan tumbuhan akibat pergeseran tanah atau tanah longsor.'),
        BulletList(
            text:
                'Pencemaran air dan tanah: Pipa bawah tanah rusak sehingga mencemari sumber air bersih.'),
        TitleSubBab(
            title: '2) Dampak terhadap infrastruktur : ', marginTop: 10.0),
        BulletList(
            text:
                'Kerusakan bangunan: Rumah, sekolah, rumah sakit, dan gedung perkantoran bisa runtuh atau rusak berat.'),
        BulletList(
            text:
                'Gangguan fasilitas umum: Jaringan listrik, air bersih, jalan raya, dan jembatan putus atau tidak dapat digunakan.'),
        BulletList(
            text:
                'Kebakaran: Bisa terjadi akibat ledakan gas atau korsleting listrik setelah gempa.'),
        TitleSubBab(title: '3) Dampak terhadap manusia', marginTop: 10.0),
        BulletList(
            text:
                'Korban jiwa dan luka-luka: Banyak orang bisa meninggal, mengalami luka, atau cacat permanen.'),
        BulletList(
            text:
                'Gangguan psikologis: Trauma, stres, dan kecemasan berkepanjangan pasca gempa.'),
        BulletList(
            text:
                'Pengungsian dan kehilangan tempat tinggal: Ribuan orang bisa kehilangan rumah dan terpaksa tinggal di tenda-tenda pengungsian.'),
        BulletList(
            text:
                'Gangguan ekonomi: Aktivitas ekonomi terganggu, banyak orang kehilangan pekerjaan dan sumber pendapatan.'),
        TitleBab(title: 'Studi kasus gempa bumi di Bantul'),
        Paragraf(
            text:
                'Gempa besar di Kabupaten Bantul, Daerah Istimewa Yogyakarta, terjadi pada 27 Mei 2006 pukul 05.54 WIB, dengan magnitudo 6,3 skala Richter. Gempa ini menjadi salah satu bencana paling mematikan di Indonesia dalam dua dekade terakhir. Korban jiwa: Lebih dari 5.700 orang meninggal, sebagian besar di Bantul. Kerusakan bangunan: Sekitar 300.000 rumah rusak, termasuk fasilitas umum seperti sekolah dan rumah sakit. Luka-luka: Puluhan ribu orang mengalami luka berat dan ringan. Kerugian ekonomi: Mencapai triliunan rupiah, termasuk kerusakan infrastruktur dan kehilangan mata pencaharian.'),
      ],
    ),
  ),
  // Mitigasi dan Kesiapsiagaan Bencana Gempa Bumi
  Data(
    id: 3,
    title: 'Kesiapsiagaan Gempa Bumi',
    icon: 'assets/icons/earthquake1.png',
    image: 'assets/images/gempa3.png',
    content: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FirstParagraf(
            first_font: 'L',
            text: 'angkah-langkah mitigasi sebelum terjadi gempa bumi'),
        TitleSubBab(title: '1) Edukasi dan Penyuluhan : '),
        BulletList(
          text:
              'Memberikan pengetahuan kepada masyarakat tentang gempa bumi dan cara menghadapinya.',
          bullet: '  •',
        ),
        BulletList(
            text:
                'Melakukan simulasi evakuasi secara berkala di sekolah, kantor, dan lingkungan masyarakat.',
            bullet: '  •'),
        TitleSubBab(
          title: '2) Perencanaan Tata Ruang:',
        ),
        BulletList(
            text: 'Menyusun tata ruang wilayah berdasarkan peta rawan gempa.',
            bullet: '  •'),
        BulletList(
            text:
                'Menghindari pembangunan di daerah rawan longsor, patahan aktif, atau zona likuefaksi.',
            bullet: '  •'),
        //
        TitleSubBab(title: '3) Pembangunan Infrastruktur Tahan Gempa : '),
        BulletList(
            text:
                'Membangun dan merenovasi bangunan dengan standar konstruksi tahan gempa.',
            bullet: '  •'),
        BulletList(
            text:
                'Menggunakan material bangunan yang kokoh dan fleksibel terhadap guncangan.',
            bullet: '  •'),
        TitleSubBab(
            title:
                '4) Pemasangan Sistem Peringatan Dini (Early Warning System) : '),
        BulletList(
            text:
                'Memasang alat pendeteksi gempa dan sistem peringatan di wilayah rawan.',
            bullet: '  •'),
        TitleSubBab(title: '5) Menyiapkan Tas Siaga Bencana: '),
        BulletList(
            text:
                'Mengisi tas dengan perlengkapan darurat seperti air, makanan, P3K, senter, baterai, peluit, dan dokumen penting.',
            bullet: '  •'),
        TitleSubBab(title: '6) Mengenal dan Menandai Jalur Evakuasi: '),
        BulletList(
            text:
                'Mengetahui lokasi aman dan jalur evakuasi di lingkungan sekitar (sekolah, rumah, tempat kerja).',
            bullet: '  •'),
        TitleSubBab(title: '7) Latihan dan Koordinasi Tanggap Darurat: '),
        BulletList(
            text:
                'Melibatkan komunitas lokal, BPBD, dan relawan dalam latihan penanggulangan bencana.',
            bullet: '  •'),
      ],
    ),
  ),
  // Tindakan Saat dan Setelah Gempa Bumi
  Data(
    id: 4,
    title: 'Tindakan Saat dan Setelah Gempa Bumi',
    icon: 'assets/icons/earthquake.png',
    image: 'assets/images/tindakangempa.jpeg',
    content: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FirstParagraf(
            first_font: 'A',
            text:
                'pa yang harus dilakukan saat terjadi gempa bumi (drop, cover, and hold on) '),
        TitleSubBab(title: '1) Drop (Menunduk / Menjatuhkan diri) : '),
        Paragraf(
            text:
                'Segera jatuhkan diri ke lantai untuk menghindari terjatuh akibat guncangan. Ini membantu menjaga keseimbangan dan melindungi dari cedera serius.'),
        TitleSubBab(title: '2) Cover (Lindungi diri) : '),
        Paragraf(
            text:
                'Lindungi kepala dan leher dengan tangan atau benda seperti bantal, tas, atau helm. Jika memungkinkan, berlindung di bawah meja yang kokoh atau di samping furnitur besar yang stabil'),
        TitleSubBab(title: '3) Hold On (Bertahan): '),
        Paragraf(
            text:
                'Pegangi meja atau tempat perlindungan dengan kuat sampai guncangan berhenti. Jika tidak ada meja, tetap berlindung dan lindungi kepala.'),
        TitleBab(
            title:
                'Tindakan pasca-gempa: evakuasi, pertolongan pertama, dan pencarian informasi resmi '),
        TitleSubBab(title: '1) Evakuasi'),
        BulletList(
            text:
                'Segera keluar dari bangunan yang rusak atau berpotensi runtuh secara tertib dan aman.'),
        BulletList(
            text:
                'Gunakan jalur evakuasi yang telah ditentukan dan hindari menggunakan lift.'),
        BulletList(
            text:
                'Menuju ke tempat evakuasi atau titik kumpul yang aman dan terbuka (jauh dari bangunan tinggi, tiang listrik, dan pohon besar).'),
        BulletList(
            text:
                'Bantu anak-anak, lansia, dan penyandang disabilitas selama proses evakuasi'),
        TitleSubBab(title: '2) Pertolongan Pertama'),
        BulletList(
            text:
                'Periksa kondisi diri dan orang di sekitar, beri pertolongan pertama pada korban luka ringan (misalnya luka sayat, pingsan, atau patah tulang). '),
        BulletList(
            text:
                'Jika ada korban serius, hubungi petugas medis atau tim penyelamat.'),
        BulletList(
            text:
                'Hindari memindahkan korban berat jika tidak terlatih, kecuali ada risiko bahaya lebih lanjut (misalnya kebakaran atau bangunan runtuh).'),
        TitleSubBab(title: '3) Pencarian infromasi resmi '),
        Text('Dengarkan informasi dari sumber resmi seperti:'),
        SizedBox(height: 4),
        BulletList(text: 'BMKG (Badan Meteorologi Klimatologi dan Geofisika)'),
        BulletList(text: 'BNPB (Badan Nasional Penanggulangan Bencana) '),
        BulletList(
            text: 'Pemerintah daerah, media resmi, atau petugas di lapangan'),
        BulletList(
            text:
                'Hindari menyebarkan berita hoaks atau informasi yang belum jelas kebenarannya. '),
        BulletList(
            text:
                'Pantau perkembangan jika terjadi gempa susulan (aftershock) dan ikuti instruksi otoritas setempat.'),
      ],
    ),
  ),
  // Pengurangan Risiko Bencana
  Data(
    id: 5,
    title: 'Pengurangan Risiko Bencana',
    icon: 'assets/icons/earthquake2.png',
    image: 'assets/images/kesiapsiagaangempa.png',
    content: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FirstParagraf(
            first_font: 'U',
            text:
                'paya pengurangan risiko bencana di lingkungan sekolah dan rumah'),
        TitleSubBab(title: '1) Di lingkungan sekolah'),
        BulletList(text: 'Edukasi dan Sosialisasi :'),
        BulletList(
          text:
              'Memberikan pendidikan tentang kesiapsiagaan bencana kepada siswa, guru, dan staf sekolah secara rutin melalui pelatihan, simulasi, dan media edukatif.',
          bullet: '   ',
        ),
        BulletList(text: 'Simulasi Bencana Rutin :'),
        BulletList(
            text:
                'Melakukan latihan evakuasi dan simulasi gempa secara berkala agar semua warga sekolah tahu apa yang harus dilakukan saat terjadi bencana.',
            bullet: '   '),
        BulletList(text: 'Peta Jalur Evakuasi :'),
        BulletList(
            text:
                'Menyediakan dan memasang peta jalur evakuasi serta titik kumpul di tempat yang mudah terlihat.',
            bullet: '   '),
        BulletList(text: 'Bangunan Tahan Gempa :'),
        BulletList(
            text:
                'Memastikan bangunan sekolah aman dan sesuai standar konstruksi tahan gempa.',
            bullet: '   '),
        BulletList(text: 'Pemeriksaan Berkala :'),
        BulletList(
            text:
                'Memeriksa dan mengamankan fasilitas sekolah seperti rak buku, proyektor, dan benda berat agar tidak membahayakan saat gempa.',
            bullet: '   '),
        //
        TitleSubBab(title: '2) Di lingkungan rumah'),
        BulletList(text: 'Penyuluhan Keluarga :'),
        BulletList(
          text:
              'Seluruh anggota keluarga diberikan pengetahuan dasar mengenai gempa dan cara penyelamatan diri.',
          bullet: '   ',
        ),
        BulletList(text: 'Rencana Evakuasi Keluarga: '),
        BulletList(
          text:
              'Menyusun rencana evakuasi, termasuk jalur keluar, tempat berkumpul, dan siapa yang bertanggung jawab atas anak atau lansia.',
          bullet: '   ',
        ),
        BulletList(text: 'Mengamankan Perabotan :'),
        BulletList(
          text:
              'Mengencangkan lemari, rak, dan benda berat ke dinding untuk mencegah jatuh saat gempa.',
          bullet: '   ',
        ),
        BulletList(text: 'P3K dan Perlengkapan Darurat :'),
        BulletList(
          text:
              'Menyediakan tas siaga bencana yang berisi P3K, senter, radio, air minum, makanan tahan lama, dan dokumen penting.',
          bullet: '   ',
        ),
        BulletList(text: 'Pengecekan Struktur Bangunan :'),
        BulletList(
          text:
              'Memastikan rumah dibangun atau direnovasi dengan konstruksi tahan gempa, serta melakukan perbaikan bila ditemukan kerusakan.',
          bullet: '   ',
        ),
        // Peran siswa dalam budaya siaga bencana
        TitleBab(title: 'Peran siswa dalam budaya siaga bencana'),
        Paragraf(
            text:
                'Siswa memiliki peran penting dalam menciptakan budaya siaga bencana di sekolah dan lingkungan sekitar. Peran tersebut antara lain :'),
        BulletList(
          text:
              'Belajar dan memahami pengetahuan tentang bencana dan cara penyelamatan diri.',
          bullet: '1) ',
        ),
        BulletList(
          text:
              'Mengikuti simulasi evakuasi dan pelatihan tanggap bencana secara aktif. ',
          bullet: '2) ',
        ),
        BulletList(
          text:
              'Menyebarkan informasi kepada teman, keluarga, dan masyarakat tentang kesiapsiagaan bencana. ',
          bullet: '3) ',
        ),
        BulletList(
          text:
              'Melaporkan potensi bahaya di lingkungan sekolah atau rumah kepada guru atau orang dewasa.',
          bullet: '4) ',
        ),
        BulletList(
          text:
              'Berpartisipasi dalam tim siaga bencana sekolah (jika ada) dan kegiatan tanggap darurat.',
          bullet: '5) ',
        ),
      ],
    ),
  ),
];
