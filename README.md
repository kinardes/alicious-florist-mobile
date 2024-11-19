☆*: .｡. o(≧▽≦)o .｡.:*☆ TUGAS 7 ☆*: .｡. o(≧▽≦)o .｡.:*☆

- Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak memiliki state atau kondisi yang bisa berubah. Stateless widget digunakan untuk menampilkan konten yang tidak berubah selama aplikasi berjalan, seperti layout statis. Contohnya adalah Text dan Icon.
Stateful Widget adalah widget yang memiliki state yang bisa berubah saat aplikasi berjalan. Stateful widget cocok digunakan jika widget tersebut memiliki perubahan data, seperti tombol yang berubah warna saat ditekan. Contohnya adalah Checkbox atau Slider.
Perbedaan: Stateless widget bersifat immutable, artinya tidak bisa diubah setelah dibuat. Sementara itu, stateful widget bersifat mutable, di mana state dari widget tersebut dapat diubah dan diperbarui melalui fungsi seperti setState().

- Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Text: Untuk menampilkan teks pada layar.
IconButton: Untuk membuat tombol dengan ikon dan fungsi tertentu ketika ditekan.
ElevatedButton: Untuk membuat tombol dengan style yang terangkat dari permukaan layar.
Snackbar: Menampilkan notifikasi singkat di bagian bawah layar ketika suatu aksi dilakukan.
Scaffold: Memberikan struktur dasar aplikasi, termasuk app bar dan body.
Column dan Row: Untuk menata widget secara vertikal atau horizontal.

- Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() digunakan pada stateful widget untuk memberi tahu Flutter bahwa state dari widget tersebut telah berubah dan perlu diperbarui. Dengan setState(), Flutter akan merender ulang widget yang terpengaruh sehingga perubahan pada UI langsung terlihat. Variabel yang dapat terdampak oleh setState() adalah variabel yang terkait dengan widget tersebut dan dipanggil di dalam fungsi build.

- Jelaskan perbedaan antara const dengan final.
const digunakan untuk nilai-nilai yang bersifat konstan dan sudah diketahui di waktu kompilasi. Nilai tersebut tidak bisa diubah dan sudah ditetapkan pada saat kode ditulis.
final digunakan untuk nilai yang hanya ditetapkan sekali saat pertama kali dijalankan. Nilainya bisa diketahui saat runtime, namun setelah ditetapkan, nilainya tidak dapat diubah.

- Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat Program Flutter Baru Bertema E-Commerce
Mulai dengan membuat proyek Flutter baru, menentukan desain dan struktur dasar aplikasi e-commerce berdasarkan tugas-tugas sebelumnya.
2. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks
Menggunakan widget ElevatedButton atau IconButton untuk tombol “Lihat Daftar Produk”, “Tambah Produk”, dan “Logout”.
3. Mengimplementasikan Warna Berbeda untuk Setiap Tombol
Setiap tombol diberi warna berbeda dengan properti style: ElevatedButton.styleFrom(primary: Colors.colorName).
4. Memunculkan Snackbar
Pada setiap tombol, tambahkan fungsi onPressed yang akan menampilkan Snackbar menggunakan ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Pesan Snackbar")));.

☆*: .｡. o(≧▽≦)o .｡.:*☆ TUGAS 8 ☆*: .｡. o(≧▽≦)o .｡.:*☆

- Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const di Flutter digunakan untuk membuat objek bersifat immutable atau tidak dapat diubah setelah dibuat. Dengan const, Flutter dapat mengoptimalkan performa aplikasi karena objek-objek ini hanya dibuat sekali dan dapat langsung digunakan ulang dari memori tanpa perlu diinisialisasi kembali. Keuntungan dari menggunakan const adalah penghematan memori dan peningkatan efisiensi, terutama dalam UI statis yang sering dirender ulang. Kita sebaiknya menggunakan const pada widget yang tidak akan berubah selama siklus aplikasi, seperti ikon atau teks statis. Sebaliknya, jika widget bergantung pada data yang dinamis atau variabel yang berubah, const tidak boleh digunakan karena nilainya perlu diperbarui setiap saat.

- Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column dan Row adalah widget layout yang digunakan untuk menata widget secara vertikal dan horizontal. Column menyusun widget secara vertikal dari atas ke bawah, sementara Row menyusun secara horizontal dari kiri ke kanan. Contoh implementasi Column adalah:

Column(
  children: [
    Text('Nama'),
    Text('Umur'),
    Text('Alamat'),
  ],
);

Sementara contoh Row adalah:

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.home),
    Icon(Icons.person),
    Icon(Icons.settings),
  ],
);

Column cocok untuk tata letak vertikal seperti daftar informasi, sementara Row digunakan untuk menyusun elemen yang berdampingan dalam satu baris.

- Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form yang dibuat, elemen input yang digunakan adalah TextFormField untuk Name dan Description (keduanya string) serta TextFormField dengan validasi integer untuk Amount. Selain itu, Flutter memiliki elemen input lain seperti Checkbox, Radio, Slider, Switch, dan DatePicker, yang dapat digunakan jika diperlukan untuk input yang lebih kompleks atau khusus. Elemen-elemen ini tidak digunakan dalam tugas kali ini karena form hanya memerlukan input teks dan angka.

- Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat
Untuk menjaga konsistensi aplikasi, tema dapat diatur melalui ThemeData di MaterialApp. Tema ini memungkinkan kita untuk mendefinisikan warna dasar, font, ikon, dan gaya lainnya yang konsisten di seluruh aplikasi. Pengaturan tema ini dilakukan di MaterialApp dan diterapkan ke seluruh aplikasi. Dalam tugas ini, tema diimplementasikan dan diterapkan di:
theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.pink,
        ).copyWith(
          secondary: Colors.pink[400],
          surface: Colors.amber[50],
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
yang ada di berkas main.dart

- Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi di Flutter dapat dikelola menggunakan Navigator dan metode seperti Navigator.push dan Navigator.pop untuk berpindah halaman. Dengan struktur ini, aplikasi dapat menggunakan widget MaterialPageRoute untuk transisi antar halaman. Jika aplikasi memiliki banyak halaman, kita juga bisa menggunakan paket seperti flutter_bloc atau Provider untuk mengelola state dan routing yang lebih kompleks.

☆*: .｡. o(≧▽≦)o .｡.:*☆ TUGAS 9 ☆*: .｡. o(≧▽≦)o .｡.:*☆

- Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan untuk mempermudah pengelolaan dan manipulasi data yang diperoleh dari JSON. Dengan model, kita dapat memetakan struktur data JSON ke dalam objek yang lebih terorganisir dan sesuai dengan aplikasi kita. Tanpa model, kita harus memproses data secara manual, yang dapat menyebabkan kesalahan seperti akses properti yang salah atau data yang tidak sesuai struktur. Meskipun tidak wajib, tidak membuat model dapat meningkatkan risiko error dan membuat kode sulit dipahami serta dikelola.

- Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk mengirimkan permintaan HTTP seperti GET, POST, dan DELETE dari aplikasi Flutter ke server. Dalam tugas ini, library ini berfungsi untuk menghubungkan aplikasi Flutter dengan backend Django, memungkinkan aplikasi untuk mengambil data JSON, mengirimkan data, atau berinteraksi dengan API endpoint.
CookieRequest adalah bagian dari library pbp_django_auth yang digunakan untuk menangani sesi autentikasi dengan cara menyimpan cookie sesi pengguna. Membagikan instance CookieRequest ke semua komponen Flutter memastikan seluruh bagian aplikasi dapat mengakses status login pengguna secara konsisten, seperti apakah pengguna sudah login, atau untuk mengirimkan data autentikasi pada setiap permintaan HTTP.

- Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah bagian dari library pbp_django_auth yang digunakan untuk menangani sesi autentikasi dengan cara menyimpan cookie sesi pengguna. Membagikan instance CookieRequest ke semua komponen Flutter memastikan seluruh bagian aplikasi dapat mengakses status login pengguna secara konsisten, seperti apakah pengguna sudah login, atau untuk mengirimkan data autentikasi pada setiap permintaan HTTP.

- Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Data dimulai dari input pengguna di Flutter, yang dikirim melalui permintaan HTTP (biasanya POST) menggunakan library http atau CookieRequest. Data ini kemudian diterima oleh backend Django, diproses, dan disimpan dalam database. Django mengirimkan respons dalam format JSON yang diambil oleh Flutter melalui permintaan HTTP (GET). Flutter memetakan data JSON ini ke dalam model untuk ditampilkan di widget aplikasi.

- Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Pada proses login atau registrasi, data akun yang dimasukkan pengguna di Flutter dikirim ke endpoint Django menggunakan POST. Django memverifikasi kredensial dan, jika valid, mengembalikan cookie sesi kepada Flutter. Cookie ini disimpan menggunakan CookieRequest untuk digunakan pada permintaan selanjutnya. Saat logout, cookie ini dihapus dari server dan aplikasi Flutter, memutus sesi autentikasi. Setelah login berhasil, Flutter memuat menu atau halaman yang membutuhkan autentikasi.

- Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
-- Pada registrasi akun, membuat halaman registrasi di Flutter dengan formulir input yang mengirimkan data ke endpoint Django untuk pendaftaran pengguna.
-- Halaman login, membuat halaman login yang mengirimkan data autentikasi ke Django. Jika berhasil, menyimpan cookie sesi.
-- Integrasi autentikasi Django dengan Flutter, menggunakan CookieRequest untuk menangani status login dan autentikasi pada Flutter.
-- Model kustom, membuat model di Django untuk memetakan data sesuai kebutuhan aplikasi, kemudian memproses JSON di Flutter agar sesuai dengan model ini.
-- Halaman daftar item, membuat halaman Flutter yang mengambil data dari endpoint Django menggunakan http atau CookieRequest dan menampilkan atribut seperti name, price, dan description.
-- Halaman detail item, membuat halaman detail untuk setiap item dengan mengambil data berdasarkan ID item. Halaman ini ditautkan dari daftar item.
-- Tombol kembali, menambahkan tombol navigasi untuk kembali ke halaman daftar item.
-- Filter item, mengubah endpoint atau logika di Flutter untuk hanya mengambil dan menampilkan item yang terkait dengan pengguna yang login. Data difilter baik di backend Django maupun di Flutter.
