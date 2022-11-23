# PBP - *Flutter Lab*
## Jump to:
➡️ [TUGAS 7](#tugas-7) </br>
➡️ [TUGAS 8](#tugas-8) </br>
➡️ [TUGAS 9](#tugas-9) </br>

# TUGAS 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

***Stateless Widget***
<br>
Stateless Widget adalah widget yang state-nya bersifat statis (tidak dapat berubah atau tidak akan pernah berubah). Widget ini bersifat immutable tepat ketika mereka dibuat. Contohnya seperti perubahan apapun pada variable, icon, button, ataupun data tidak dapat mengubah state dari aplikasi tersebut.

***Stateful Widget***

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

- Membuat project Flutter baru dengan cara masuk ke dalam directory `pbp-flutter-lab` dan menjalankan command `flutter create counter_7` pada cmd.
- Mengubah tampilan dengan mengganti title pada MyHomePage dengan `home: const MyHomePage(title: "Program Counter")`.
- Mengubah teks di atas counter sesuai dengan kondisi counter ganjil atau genap dengan cara menambahkan `(_counter % 2 == 0) ?` dan disesuaikan display teksnya.
- Mengimplementasikan fungsi `_incrementCounter()` pada tombol + dan menambahkan event ketika onPressed.
- Mengimplementasikan fungsi `_decrementCounter()` pada tombol - dan menambahkan event ketika onPressed. Ada perbeedaan untuk bonus, yaitu menambahkan kondisi bahwa tombol decrement hanya muncul pada saat counter > 0, sehingga menambahkan `if (_counter > 0)`.
- Mengimplementasikan layouting dengan menambahkan 
```
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
floatingActionButton: Padding(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Align(
        ...
      ),
      Align(
        ...
      )
    ],
  ),
)
```

# TUGAS 8

### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.

`Navigator.push` berfungsi untuk menambahhkan route ke dalam stack `Route` yang di atur oleh `Navigator`. Sehingga ketika kita melakukan push routing, jumlah routing dalam stack tersebut akan bertambah. Berbeda dengan `Navigator.push`, `Navigator.pushReplacement` akan menghapus route sebelumnya dan melakukan push route baru yang ingin dituju (direplace).

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Selain widget yang telah disebutkan pada [Tugas 7](#tugas-7), ada beberapa widget yang digunakan pada tugas 8 ini, antara lain:

1. Drawer</br>
Drawer adalah widget dalam flutter yang berfungsi untuk menyediakan routing-routing yang dapat dilakukan pada suatu aplikasi.

2. Navigator</br>
Navigator adalah widget dalam flutter yang berfungsi untuk menuju routing halaman lain.

3. ListTile</br>
ListTile adalah widget dalam flutter yang berfungsi sebagai semacam row dengan height yang tetap.

4. Form</br>
Form adalah widget dalam flutter yang berfungsi untuk mengelompokkan beberapa form field.

5. TextFormField</br>
TextFormField adalah widget dalam flutter yang berfungsi untuk menampung text field pada sebuah form field.

6. DropdownButtonFormField</br>
DropdownButtonFormField adalah widget dalam flutter yang berfungsi untuk menampung list of item dalam bentuk dropdown.

7. TextButton</br>
TextButton adalah widget dalam flutter yang berfungsi sebagai button yang memiliki fungsi ketika ditekan.

8. Card</br>
Card adalah suatu widget dalam flutter yang berfungsi untuk menampilkan suatu text.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh:: onPressed).

- `onPressed`
- `onHover`
- `onTap`
- `onChanged`
- `onLongPress`
- `onSaved`

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Widget `Navigator` pada flutter bekerja dengan sebuah stack of `Routes` yang berisikan halaman yang diakses oleh user. Widget ini bekerja dengan menampilkan halaman yang paling atas pada stack of `Routes`. Seperti stack pada umumnya, `Navigator` memiliki method untuk melakukan pergantian dengan `Navigator.pop` yang digunakan untuk kembali ke halaman sebelumnya ataupun `Navigator.push` yang berfungsi untuk menavigasikan ke halaman yang baru.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat file baru yaitu `form.dart` untuk menerima dan menyimpan input yang dimasukkan oleh user dalam suatu list.
- Membuat widget `TextFormField()` pada `form.dart` dengan property onSaved, onChanged, dan validator untuk menyimpan datanya pada list yang telah dibuat (judul dan budget). 
- Membuat widget `DropdownButtonFormField()` pada `form.dart` dengan property items, onChanged, onSaved, dan validator untuk menyimpan datanya pada list yang telah dibuat (jenis).
- Menambahkan `TextButton()` pada `form.dart`untuk melakukan penyimpanan dan reset form.
- Membuat file baru yaitu `data.dart` untuk menampilkan judul, budget, dan jenis yang telah diisi oleh user pada form dengan menggunakan card.
- Membuat file baru bernama `drawer.dart` untuk melakukan refactor widget Drawer ke file yang terpisah. Drawer ini untuk melakukan routing pada dari satu halaman ke halaman lainnya.

# Tugas 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Jawawbannya adalah ya, pengambilan data JSON tanpa membuat model dapat dilakukan. JSON sendiri merupakan suatu object dalam notasi Javascript di mana pada bahasa Dart ekuivalen dengan Map (terdiri dari key dan value pair). Namun, pengambilan data JSON tanpa mengonversikannya terlebih dahulu ke dalam suatu model bukanlah cara terbaik dalam implementasinya. Pengonversian ini bertujuan untuk meminimalisasi kesahalan saat pengambilan data melalui http request yang akan ditampilkan pada aplikasi.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Selain widget yang telah disebutkan pada [Tugas 7](#tugas-7) dan [Tugas 8](#tugas-8), ada beberapa widget yang digunakan pada tugas 9 ini, antara lain:

1. FutureBuilder</br>
FutureBuilder adalah widget dalam flutter yang digunakan untuk membuat widgets berdasarkan pada snapshot terakhir yang berkaitan dengan `Future`.

2. CircularProgressIndicator</br>
CircularProgressIndicator adalah widget dalam flutter yang digunakan untuk menunjukkan suatu progress melalui sebuah lingkaran.

3. InkWell</br>
InkWell adalah widget dalam flutter yang digunakan agar sebuah area segiempat dapat merespon terhadap sentuhan.

4. Checkbox</br>
Checkbox adalah widget dalam flutter yang digunakan untuk menunjukkan sebuah checkbox.

5. Flexible
Flexible adalah widget dalam flutter yang digunakan untuk mengontrol row dan column yang kemudian flex akan mengisi space kosongnya.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

- Membuat sebuah function `http request` dengan method `GET` secara asynchronous untuk mengambil data dari pihak eksternal.
- Lakukan parsing pada function tersebut dengan melakukan `jsonDecode()` yang bertujuan untuk mengubah response dari type String menjadi JSON.
- Konversi object JSON ke dalam suatu Model Object.
- Menampilkan data-data terbaru yang telah dikonversi menjadi sebuah object dengan menggunakan widget `FutureBuilder`.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat file baru dengan nama `myWatchListModel.dart` yang menyimpan suatu model untuk watchlist.
- Menambahkan dependency `http` yang digunakan untuk melakukan fetching data JSON dari `https://django-project-iqbal.herokuapp.com/mywatchlist/json/`
- Membuat file baru bernama `myWatchlist.dart` yang menampilkan data-data dari myWatchlist yang sudah di fetch dengan menggunakan card.
- Membuat masing-masing dari card tersebut clickable dan routing ke `MyDetailPage` card.
- Menampilkan detail dari data-data tersebut pada halaman `detail.dart` card yang sesuai.
