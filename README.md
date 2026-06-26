# Data Compensation Analysis: Global Market Trends

## 📌 Business Understanding
* **Tantangan:** Kompetisi memperebutkan talenta data semakin ketat secara global. Tim HR dan manajemen dituntut untuk menentukan anggaran kompensasi yang kompetitif tanpa membebani keuangan perusahaan.
* **Tujuan:** Menganalisis tren gaji talenta data pada dataset `ds_salaries` menggunakan SQL dan Looker Studio untuk mengoptimalkan strategi rekrutmen, kebijakan *remote work*, dan efisiensi anggaran (*budgeting*).

---

## 📊 Result Summary
* **1. Tren Profesi Paling Dicari:** Data Scientist mendominasi pada 2020–2021, namun berhasil disalip oleh **Data Engineer** di tahun 2022 dengan 89 lowongan. Sementara posisi **Data Analyst** mengalami lonjakan permintaan masif di tahun 2022 sebanyak 73 lowongan (naik 329% dibanding tahun 2021).
* **2. Rata-Rata Gaji Data Analyst:** Tingginya ketergantungan industri pada *data insight* membuat nilai tawar profesi ini melesat lebih dari dua kali lipat hanya dalam tiga tahun. Gaji rata-rata tumbuh agresif dari **$45,547** (2020) ke **$79,505** (2021), hingga akhirnya sukses menembus batas enam digit di angka **$100,551** pada 2022.
* **3. Dampak Kerja Remote terhadap Gaji:** Kebijakan **Full Remote (100%)** menawarkan gaji rata-rata tertinggi sebesar **$99,320** (70 karyawan), mengungguli model *On-Site* (**$86,604**). Fakta ini mematahkan anggapan bahwa kerja jarak jauh akan menurunkan standar kompensasi talenta data.
* **4. Negara Kompensasi Terbesar:** **Amerika Serikat (US)** memimpin pasar global secara mutlak dengan rata-rata kompensasi tertinggi sebesar **$144,055** (355 karyawan), disusul oleh **Kanada (CA)** sebesar **$99,824**. Sebaliknya, **India (IN)** menawarkan rata-rata terendah di angka **$28,582**.
* **5. Pengaruh Tingkat Pengalaman terhadap Gaji:** Kompensasi meningkat secara linear di setiap jenjang karier. Lonjakan kenaikan (*salary jump*) terbesar terjadi saat beralih dari level **Mid ke Senior**, melesat dari **$87,996 ke $138,617** (naik ~57.5%), sebelum menyentuh puncaknya di level **Executive** sebesar **$199,392**.
* **6. Pengaruh Ukuran Perusahaan terhadap Gaji:** Perusahaan skala **Large** memberikan gaji rata-rata tertinggi sebesar **$119,243**, bersaing ketat dengan perusahaan skala **Medium** di angka **$116,905**. Menariknya, perusahaan Medium menjadi penyerap talenta terbesar (326 karyawan) sekaligus menawarkan fleksibilitas *remote work* tertinggi (rata-rata **72.5%**).

---

## 💡 Key Takeaways (Rekomendasi Strategis)
* **Optimasi Anggaran:** Perusahaan skala *Startup* atau *Medium* dapat bersaing memperebutkan talenta berbakat dengan menawarkan kebijakan **Full Remote (100%)**. Langkah ini sangat strategis karena talenta data global sangat menghargai fleksibilitas ini, di mana perusahaan skala *Medium* terbukti sukses menyerap talenta terbanyak (326 karyawan) berkat fleksibilitas *remote* yang tinggi.
* **Strategi Hub Global:** Untuk menghemat biaya operasional, tim HR direkomendasikan melakukan rekrutmen lintas negara (*cross-border hiring*) dengan membidik talenta di **India** ($28,582) atau **Kanada** ($99,824) sebagai alternatif dari pasar Amerika Serikat ($144,055) yang sudah sangat *overpriced*. Strategi ini menawarkan efisiensi anggaran kompensasi mencapai **30% hingga 80%**.
* **Skalabilitas Tim:** Mengingat peran **Data Engineer** dan **Data Scientist** sangat kompetitif di pasar, perusahaan harus fokus pada retensi internal. Mengingat adanya *salary jump* sebesar **57.5%** dari level *Mid* ke *Senior*, melakukan *upskilling* pada talenta internal jauh lebih ekonomis daripada melakukan rekrutmen eksternal untuk level *Senior*.

---

## 🛠 Describe the Process
1. **Data Exploration (SQL):** Melakukan validasi awal, mitigasi *sample size bias* menggunakan klausul `HAVING COUNT(*) >= 10` untuk kueri geografi, dan pembersihan data pencilan (*outliers*).
2. **Transformation:** Melakukan rekayasa teks (*calculated fields*) untuk mengubah kode kaku (`EN/MI/SE/EX` dan `0/50/100`) menjadi penamaan kategori yang ramah pengguna (*user-friendly*).
3. **Visualization (Looker Studio):** Membangun dashboard interaktif menggunakan *Combo Chart* untuk analisis multi-metrik, *Geo Map* untuk analisis spasial kompensasi global, serta memasang *Filter Bar* dinamis berdasarkan tahun dan pengalaman.
4. **Insight Generation:** Menerjemahkan visualisasi data menjadi narasi bisnis berbobot yang dapat dieksekusi langsung oleh tim HR dan C-Level.

---

## 💻 The Project
* 📄 **SQL Script:** [Lihat di sini](data_analysis_queries.sql)
* 📊 **Interactive Dashboard:** On Process
