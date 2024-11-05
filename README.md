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
Setiap tombol dapat diberi warna berbeda dengan properti style: ElevatedButton.styleFrom(primary: Colors.colorName). Namun saya memilih menyeragamkan warna button sesuai ciri khas aplikasi, namun icon pada button berbeda-beda. 
4. Memunculkan Snackbar
Pada setiap tombol, tambahkan fungsi onPressed yang akan menampilkan Snackbar menggunakan ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Pesan Snackbar")));.