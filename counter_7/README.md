# counter_7
A Simple Counter Flutter project.

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

***Stateless Widget***
<br>
Stateless Widget adalah widget yang state-nya bersifat statis (tidak dapat berubah atau tidak akan pernah berubah). Widget ini bersifat immutable tepat ketika mereka dibuat. Contohnya seperti perubahan apapun pada variable, icon, button, ataupun data tidak dapat mengubah state dari aplikasi tersebut.

Stateful Widget

Stateful Widget adalah widget yang state-nya bersifat dinamis (dapat berubah). Widget ini bersifat mutable sehingga dapat diganti selama berulang kali pada saat runtime. Contohnya seperti checkbox, radio button, slider.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Beberapa widget yang saya gunakan pada *project* ini antara lain:
1. Scaffold<br>
Scaffold merupakan suatu struktur layout dari project flutter yang di dalamnya terdapat widget-widget lain.

2. AppBar<br>
Pada project counter ini, AppBar terdapat pada bagian paling atas dan hanya memiliki judul dari aplikasi ini di dalamnya.

3. Column<br>
Column adalah widget dalam flutter yang digunakan untuk menampilkan children secara vertikal. Pada project ini, widget column digunakan untuk melakukan pengaturan dalam penempatan text GANJIL, GENAP, dan counternya.

4. Row<br>
Row adalah widget dalam flutter yang digunakan untuk menampilkan children secara horizontal. Pada project ini, widget row digunakan untuk melakukan pengaturan dalam penempatan dua button + dan - secara sejajar horizontal.

5. Text<br>
Text adalah widget dalam flutter yang digunakan untuk menampilkan sebuah teks yang dapat diberi style. Pada project ini, widget text digunakan untuk menampilkan tulisan judul, GENAP, GANJIL, dan counter.

6. Button<br>
Button adalah widget dalam flutter yang merupakan suatu control berbentuk elemen grafik yang memiliki trigger untuk menjalankan suatu event. Pada project ini, terdapat Floating Button yang digunakan untuk melakukan increment dan decrement pada counter.

### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut. 

Fungsi `setState()` berfungsi untuk memberitahukan framework bahwa internal state dari object yang berkaitan telah berubah. Oleh karena itu, ketika melakukan pengubahan pada internal state dari suatu state object, diperlukan untuk menambah fungsi `setState()` pada fungsi tersebut.

Pada project ini, variable yang terdampak dari fungsi `setState()` adalah variable `_counter`. Dikarenakan kita memerlukan function `_incrementCounter()` dan `_decrementCounter()` yang dapat memengaruhi variable `_counter()`, maka perlu ditambahkan `setState()` pada kedua fungsi tersebut.

### Jelaskan perbedaan antara const dan final.

Const dan Final keduanya digunakan untuk menjaga value dari suatu variable static, yang berarti setelah variable tersebut didefinisikan, tidak dapat diubah statenya. Perbedaan yang membedakan keduanya adalah pada compile-time nya. Ketika value belum diketahui saat compile-time, maka gunakan final. Sedangkan, ketika value ditentukan saat compile-time, maka gunakan const. Saat value di-assign, kedua value pada final ataupun const tidak dapat berubah atau bersifat immutable.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- [x] Membuat project Flutter baru dengan cara masuk ke dalam directory `pbp-flutter-lab` dan menjalankan command `flutter create counter_7` pada cmd.
- [x] Mengubah tampilan dengan mengganti title pada MyHomePage dengan `home: const MyHomePage(title: "Program Counter")`. Selanjutnya mengganti teks yang akan 
