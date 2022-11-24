# Tugas 7 PBP counter_7
### Muhammad Rafialy Farrel
### 2106751171
### PBP-A

#

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Secara sederhana Stateless Widget dapat diartikan sebagai Widget yang tidak dapat dirubah atau tidak akan pernah berubah. Stateless Widget merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal. Stateful Widget merupakan widget yang dinamis atau dapat berubah. Stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris dll.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
a). **Visibility**  = _Widget_ ini digunakan untuk membuat fungsionalitas tombol _decrement_ yang hilang apabila _counter_ = 0.
b). **Row**         = Digunakan untuk menempatkan kedua tombol increment dan decrement pada satu baris yang diletakkan pada bawah kiri dan kanan app.
c). **Scaffold**    = Widget utama/landasan halaman untuk membuat sebuah halaman pada flutter, scaffold ini memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
d). **AppBar**      = Tempat untuk menampilkan _title_ dari program.
e). **Text**        = Untuk menampilkan tipe bilangan serta _title_ dari program.
f). **Theme**       = Menentukan tema/warna yang diingikan untuk app.
g). **Center**      = Semua Widget yang ada didalam Widget ini akan diletakkan di bagian tengah.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
setState() merencanakan suatu pembaruan ke suatu state objek komponen. Ketika state berubah, komponen merespons dengan me-render ulang.

## 4. Jelaskan perbedaan antara const dengan final
Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.

Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time. Final dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan. Intinya, final dapat digunakan untuk inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan.

Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
Pertama-tama menambahkan ```_decrementcounter()``` untuk mendefine decrement untuk pengurangan pada counter. Lalu, saya membuat sebuah modulo untuk melakukan pengecekan angka yang dimunculkan oleh widget bernilai GANJIL atau GENAP. Lalu yang terakhir, membuat ```FloatingActionButton```untuk memunculkan button decrement dan increment sesuai dengan counternya masing-masing.

## Referensi
1. https://id.reactjs.org/docs/faq-state.html
2. https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/
3. https://blog.rumahcoding.co.id/tutorial-flutter-3-perbedaan-stateless-widget-dan-statefull-widget/

#

# Tugas 8 PBP counter_7
### Muhammad Rafialy Farrel
### 2106751171
### PBP-A

#

## 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
```Navigator``` merupakan metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini sehingga halaman baru akan ditampilkan di atas halaman sebelumnya. ```Navigator.push``` digunakan untuk berpindah dari activity pertama ke activity selanjutnya kemudian ketika dari activity kedua kita men-tap tombol back atau kembali maka kita akan dialihkan ke activity pertama (tidak menghilangkan screen sebelumnya). Sedangkan ```Navigator.pushReplacement``` digunakan untuk perpindahan activity dari satu halaman ke halaman lain akan tetapi, ketika tombol kembali di-tap maka activity sebelumnya dihilangkan.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
a). **Container**             = UUntuk menampung widget.
b). **Text**                  = Untuk menampilkan teks.
c). **Form**                  = Untuk membuat form.
d). **Icon**                  = Untuk membuat ikon.
e). **Padding**               = Untuk mengatur tampilan.
f). **DropdownButton**        = Untuk membuat dropdown.
g). **Row**                   = Digunakan untuk menempatkan widget secara horizontal.
h). **Column**                = Digunakan untuk menempatkan widget secara vertikal.
i). **TextFormField**         = Sebagai tempat menginput teks pada form.
j). **TextButton**            = Untuk membuat button.
k). **TextStyle**             = Untuk styling pada text. 
l). **Drawer**                = Untuk menampilkan menu yang tersembunyi pada sisi kanan atau kiri sebuah aplikasi dan berpindah halaman.
m). **SingleChildScrollView** = Digunakan untuk membuat widget yang dapat di scroll

## 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
a). onPressed
b). onSaved
c). onChanged
d). onClick
e). onLongPress
f). onHover
g). onTap

## 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator merupakan sebuah Widget yang digunakan untuk melakukan perpindahan sebuah activity dari satu activity ke activity yang lain sekaligus dapat mengirimkan sebuah variabel di dalamnya. Cara kerja ```Navigator.push``` adalah menambahkan screen baru pada tumpukan screen (stack) yang berada di atas screen sebelumnya (screen sebelumnya dapat tetap terlihat) sedangkan ```Navigator.pushReplacement``` akan dimunculkan dan screen akan diganti dengan yang baru di push.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
Pertama-tama saya melakukan refactor widget drawer dan membuat routing pada widget drawer. Lalu menambahkan halaman ```addbudget``` beserta form-nya serta membuat model budget. Membuat variabel global untuk menampung isi dari budget. Yang terahir membuat halaman ```databudget``` untuk menampilkan list budget.

## Referensi
1. https://belajarflutter.com/memahami-navigasi-routing-di-flutter/
2. https://mauladaniadi.medium.com/modul-ii-navigator-daily-widgets-e9441c038ae2

# Tugas 9 PBP counter_7
### Muhammad Rafialy Farrel
### 2106751171
### PBP-A

#

## 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Untuk pengambilan data JSON kita tidak perlu membuat model terlebih dahulu. Kita dapat mengambilan data JSON tersebut dalam bentuk http response dalam bentuk raw data. Namun untuk mempermudah dalam mengakses data dari JSON tersebut, developer harus membuat model yang berfungsi untuk menampung data JSON sehingga mempermudah developer untuk melakukan operasi pada data tersebut.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
a). **Container**             = UUntuk menampung widget.
b). **Text**                  = Untuk menampilkan teks.
c). **Form**                  = Untuk membuat form.
d). **Icon**                  = Untuk membuat ikon.
e). **Padding**               = Untuk mengatur tampilan.
f). **DropdownButton**        = Untuk membuat dropdown.
g). **Row**                   = Digunakan untuk menempatkan widget secara horizontal.
h). **Column**                = Digunakan untuk menempatkan widget secara vertikal.
i). **TextFormField**         = Sebagai tempat menginput teks pada form.
j). **TextButton**            = Untuk membuat button.
k). **TextStyle**             = Untuk styling pada text. 
l). **Drawer**                = Untuk menampilkan menu yang tersembunyi pada sisi kanan atau kiri sebuah aplikasi dan berpindah halaman.
m). **SingleChildScrollView** = Digunakan untuk membuat widget yang dapat di scroll

## 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
### a). Membuat class model untuk mendefine data JSON
### b). Membuat method untuk fetch data dari website json tugas 3 PBP dengan http yang nantinya akan di refactor menjadi sebuah file baru
### c). Response dari http akan diubah menjadi object Dart dan dimasukkan kedalam list
### d). Untuk menampilkan data tersebut dapat menggunakan FutureWidget karena result dari server menggunakan Future yang memberikan delay dalam pengambilan data
### e). Melakukan iterasi terhadap data yang ada untuk menampilkan data

## 4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Pertama-tama membuat mywatchlistmodels.dart untuk menjadi model dari page watchlist yang menampung data json. Membuat page route drawer untuk meneruskan route ke MyWatchlist. Membuat method untuk fetch data dari website json tugas 3 PBP dengan http yang nantinya akan di refactor menjadi sebuah file baru. Membuat page mywatchlist untuk menampilkan data yang berada pada json yaitu list film dan page detail ketika diklik untuk menampilkan detail filmnya.
