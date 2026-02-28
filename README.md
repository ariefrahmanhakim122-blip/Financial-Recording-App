# 💰 Aplikasi Rekap Keuangan Pribadi (Java Swing)

Aplikasi desktop berbasis Java untuk mencatat pemasukan dan pengeluaran secara terorganisir. Dilengkapi dengan visualisasi data menggunakan grafik dan fitur laporan.

## ✨ Fitur Utama
* Pencatatan Transaksi: Input pemasukan dan pengeluaran berdasarkan kategori.
* Filter Data: Menampilkan data berdasarkan bulan dan tahun tertentu.
* Dashboard Visual: Grafik batang (Bar Chart) interaktif menggunakan JFreeChart untuk membandingkan keuangan bulanan.
* Perhitungan Otomatis: Menampilkan Total Pemasukan, Total Pengeluaran, dan Saldo Akhir secara real-time.
* Export Laporan: 
    * Export ke PDF (Siap cetak).
    * Export ke CSVn(Untuk diolah di Excel).
* Database: Terintegrasi dengan MySQL untuk penyimpanan data permanen.

## 🛠️ Teknologi yang Digunakan
* Bahasa: Java
* GUI Library: Java Swing & NetBeans Matisse
* Database: MySQL
* Library Eksternal:
    * `JFreeChart`: Untuk pembuatan grafik.
    * `MySQL Connector/J`: Driver database.
    * `JCalendar`: Untuk pemilihan tanggal.

## 🚀 Cara Menjalankan
1. Clone repository ini:
   ```bash
   git clone [https://github.com/username-kamu/nama-repo.git](https://github.com/username-kamu/nama-repo.git)

2. Import database .sql yang tersedia ke MySQL (phpMyAdmin).

3. Buka project menggunakan Apache NetBeans IDE.

4. Pastikan Library (.jar) yang dibutuhkan sudah ditambahkan    di folder Libraries.

5. Run FormLogin.java atau FormDashboard.java.
