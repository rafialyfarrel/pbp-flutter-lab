# Tugas 7 PBP counter_7
### Muhammad Rafialy Farrel
### 2106751171
### PBP-A

#

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
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
