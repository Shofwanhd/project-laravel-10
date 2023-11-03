-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2023 at 01:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectl10`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int NOT NULL,
  `id_user` int NOT NULL,
  `id_kategori` int NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(2, 4, 5, 'pelayanan-medik', 'Pelayanan Medik', 'Pelayanan Medik dan Keperawatan kami terdiri dari pelayanan Gawat Darurat (IGD), Rawat Jalan, Rawat Inap, Kamar Operasi dan Kamar Bersalin', '<p><strong>Instalasi Rawat Jalan</strong></p>\r\n<p style=\"text-align: justify;\">Fungsi instalasi rawat jalan adalah sebagai tempat konsultasi, pemeriksaan dan pengobatan pasien oleh dokter ahli di bidang masing-masing yang disediakan untuk pasien yang membutuhkan waktu singkat untuk penyembuhannya atau tidak memerlukan pelayanan perawatan. Poliklinik juga berfungsi sebagai tempat untuk penemuan diagnosis dini, yaitu tempat pemeriksaan pasien pertama dalam rangka pemeriksaan lebih lanjut di dalam tahap pengobatan penyakit.</p>\r\n<p>Kebutuhan sarana rumah sakit terdiri dari :</p>\r\n<ol>\r\n<li>Klinik Penyakit Dalam</li>\r\n<li>Klinik Jantung</li>\r\n<li>Klinik Paru</li>\r\n<li>Klinik DOTS</li>\r\n<li>Klinik Anak</li>\r\n<li>Klinik Bedah Umum</li>\r\n<li>Klinik Bedah Urologi</li>\r\n<li>Klinik Bedah Mulut</li>\r\n<li>Klinik Bedah Syaraf</li>\r\n<li>Klinik Orthopedi</li>\r\n<li>Klinik Kebidanan Dan Penyakit Kandungan</li>\r\n<li>Klinik Mata</li>\r\n<li>Klinik Telingan Hidung dan Tenggorokan (THT)</li>\r\n<li>Klinik Kulit dan Kelamin</li>\r\n<li>Klinik Syaraf</li>\r\n<li>Klinik Psikiatri</li>\r\n<li>Klinik Gigi Dan Mulut</li>\r\n<li>Klinik VCT dan CST</li>\r\n<li>Klinik MCU</li>\r\n<li>Klinik ODC Thalasemia</li>\r\n</ol>\r\n<p><strong>Instalasi Gawat Darurat</strong></p>\r\n<p><strong><img src=\"../../../assets/upload/image/IMG_9276.jpg\" alt=\"\" width=\"361\" height=\"203\"></strong></p>\r\n<p style=\"text-align: justify;\">Setiap rumah sakit wajib memiliki pelayanan gawat darurat yang memiliki kemampuan untuk melakukan pemeriksaan awal kasus-kasus gawat darurat dan melakukan resusitasi dan stabilitasi. Pelayanan di Instalasi Gawat Darat rumah sakit harus dapat memberikan pelayanan 24 (dua puluh empat) jam secara terus menerus 7 (tujuh) hari dalam seminggu.</p>\r\n<p>Program pelayanan pada IGD antara lain :</p>\r\n<ol>\r\n<li>\r\n<p><em>True Emergency</em> (kegawatan darurat)</p>\r\n</li>\r\n<li>\r\n<p><em>False Emergency</em> (kegawatan tidak darurat)</p>\r\n</li>\r\n<li>\r\n<p><em>Cito Operation</em></p>\r\n</li>\r\n<li>\r\n<p><em>Cito/Emergency High Care Unit</em> (HCU)</p>\r\n</li>\r\n<li>\r\n<p>Cito Lab</p>\r\n</li>\r\n<li>\r\n<p>Cito Radiodiagnostik</p>\r\n</li>\r\n<li>\r\n<p>Cito Darah</p>\r\n</li>\r\n<li>\r\n<p>Cito Depo Farmasi</p>\r\n</li>\r\n</ol>\r\n<p>Pelayanan kegawatdaruratan pada IGD :</p>\r\n<ol>\r\n<li>\r\n<p>pelayanan kegawatdaruratan kardiovaskular</p>\r\n</li>\r\n<li>\r\n<p>pelayanan kegawatdaruratan sistem pernafasan/respiration</p>\r\n</li>\r\n<li>\r\n<p>pelayanan kegawatdaruratan saraf sentral/otak</p>\r\n</li>\r\n<li>\r\n<p>pelayanan kegawatdaruratan lain antara lain saluran kemih/prostat, pencernaan dan sebagainya</p>\r\n</li>\r\n</ol>\r\n<p><strong>Instalasi Rawat Inap</strong></p>\r\n<p><strong><img src=\"../../../assets/upload/image/IMG_0099_1_1.jpg\" alt=\"\" width=\"328\" height=\"185\"></strong></p>\r\n<p style=\"text-align: justify;\">Lingkup kegiatan di ruang rawat inap rumah sakit meliputi kegiatan asuhan dan pelayanan keperawatan, pelayanan medis, gizi, administrasi pasien, rekam medis, pelayanan kebutuhan keluarga pasien.</p>\r\n<p>Pelayanan kesehatan di instalasi rawat inap mencakup antara lain :</p>\r\n<ol>\r\n<li>Pelayanan keperawatan</li>\r\n<li>Pelayanan medik (pra dan pasca tindakan medik)</li>\r\n<li>Pelayanan penunjang medik :\r\n<ul>\r\n<li>konsultasi radiologi</li>\r\n<li>pengambilan sampel laboratorium</li>\r\n<li>konsultasi anestesi</li>\r\n<li>gizi (diet dan konsultasi)</li>\r\n<li>farmasi (depo dan klinik)</li>\r\n<li>rehab medik (pelayanan fisioterapi dan konsultasi)</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p><strong>Instalasi Perawatan Intensif</strong></p>\r\n<p style=\"text-align: justify;\">Merupakan instalasi untuk perawatan pasien yang dalam keadaan belum stabil sehingga memerlukan pemantauan ketat secara intensif dan tindakan segera. ICU <em>(Intensive Care Unit)</em> merupakan unit pelayanan khusus di rumah sakit yang menyediakan pelayanan yang komperehensif dan berkesinambungan selama 24 (dua puluh empat) jam.</p>\r\n<p><strong>Instalasi Bedah Sentral</strong></p>\r\n<p style=\"text-align: justify;\">Instalasi bedah adalah suatu unit di rumah sakit yang berfungsi sebagai tempat untuk melakukan tindakan pembedahan secara elektif aupun akut, yang membutuhkan kondisi steril dan kondisi khusus lainnya. Luas ruangan harus cukup untuk memungkinkan petugas bergerak sekeliling peralatan bedah. Ruang bedah harus dirancang dengan faktor keselamatan yang tinggi.</p>\r\n<p><strong>Ruang</strong><strong> Kebidanan dan Penyakit Kandungan</strong></p>\r\n<ol>\r\n<li>Pelayanan persalinan</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">Pelayanan persalinan meliputi pemeriksaan pasien baru, asuhan persalinan kala I, asuhan persalinan kala II (pertolongan persalinan), dan asuhan bayi baru lahir.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;2. Pelayanan nifas</p>\r\n<p style=\"text-align: justify;\">Pelayanan nifas meliputi pelayanan nifas normal dan pelayanan nifas bermasalah (<em>post sectio caesaria</em>, infeksi, pre eklampsi/eklampsi)</p>\r\n<p>&nbsp; &nbsp; &nbsp; 3. Pelayanan KB</p>\r\n<p style=\"text-align: justify;\">Pelayanan gangguan kesehatan reproduksi/penyakit kandungan, fetomaternal, onkologi ginekologi, imunoendokrinologi, uroginekologi rekonstruksi, obgyn sosial.</p>\r\n<p>&nbsp; &nbsp; &nbsp;4. Pelayanan tindakan/operasi kebidanan</p>\r\n<p>Pelayanan tindakan/operasi kebidanan adalah untuk memberikan tindakan, misalnya ekserpasi polip vagina, operasi sectio caesaria, operasi myoma uteri, dll.</p>', 'Publish', 'Layanan', '', 'IMG_0071_resize.jpg', 'fa fa-chart-bar', 2174, '2019-05-17 04:15:33', '2019-05-17 04:06:00', '2023-09-20 12:54:18'),
(3, 4, 1, 'sejarah-bayu-asih', 'Sejarah Bayu Asih', 'Memuat sejarah dan awal mula berdirinya RSUD Bayu Asih Kabupaten Purwakarta pada tahun 1930 saat masih zaman Hindia Belanda', '<h2>Sejarah Singkat</h2>\r\n<p style=\"text-align: justify;\">RSUD Bayu Asih merupakan rumah sakit tertua di wilayah Purwakarta, Karawang, Bekasi dan Subang dibangun untuk memenuhi kebutuhan warga masyarakat Purwakarta dan sekitarnya.Diresmikan tanggal 18 Oktober 1930 oleh Gubernur Jenderal ACD de Graeff, Pastoor Van den Brug, dr.Dake dan dr. Bosman.</p>\r\n<p style=\"text-align: justify;\">Berdiri diatas tanah seluas 5 (lima) hektar dan luas bangunan 5000 m2, memiliki komponen pelayanan yang sangat mendasar, yaitu: rawat jalan, rawat inap yang terdiri dari 7(Tujuh) bangsal (belum terbagi menjadi spesialistik), bengkel, apotik, sekolah juru kesehatan dan asrama.</p>\r\n<p style=\"text-align: justify;\">Merupakan sebuah rumah sakit yang sangat dibanggakan dan dibuat oleh Nederlandsch Zendings Vereeniging untuk Pemerintah (Hindia Belanda), diberi nama : “Bajoe Asih“ yang mempunyai arti : “Pemeliharaan didalam kekuatan derma pengasihan “. RSUD Bayu Asih berlokasi ditengah kota Purwakarta, sehingga mempunyai aksesibiliti mudah dijangkau dari segala arah.</p>\r\n<h2>Kepemimpinan dan Pengelolaan</h2>\r\n<p style=\"text-align: justify;\">RSUD Bayu Asih pada awalnya dikelola oleh Yayasan Gereja Kristen Pasundan (GKP), kemudian sejak tahun 1965 dikelola oleh Pemerintah Daerah Kabupaten Purwakarta. Dalam pengelolaan pemerintah daerah, kepemimpinan rumah sakit telah berganti sebanyak 11 (sebelas) kali, dengan susunan sebagai berikut :</p>\r\n<ol>\r\n<li>Tahun 1965 - 1978 oleh <b>dr. Sigit Soeroso</b></li>\r\n<li>Tahun 1978 - 1994 oleh <b>dr. Kustinah Djajawinata</b></li>\r\n<li>Tahun 1994 - 2001 oleh <b>dr. Yuke Pudiatuti GS, MHA</b></li>\r\n<li>Juni 2001 - Februari 2002 oleh <b>Drs. Lily Hambali Hasan, M.Si</b></li>\r\n<li>Februari 2002 - Januari 2005 oleh <b>dr. Gatami, Sp.A</b></li>\r\n<li>Januari 2005 - Maret 2007 oleh <b>Ir. Sufiat Sulaeman, MM</b></li>\r\n<li>April 2007 s/d Maret 2009 oleh<b> dr. Anne Hediana K., MM</b></li>\r\n<li>April 2009 s/d November 2011 oleh <b>Syarifuddin Yunus, SH</b></li>\r\n<li>November 2011 s/d Juli 2012 oleh <b>dr. Anne Hediana K, MM</b></li>\r\n<li>Juli 2012 s/d Maret 2022 oleh <b>dr. H. Agung Darwis Suriaatmadja, M.Kes</b></li>\r\n<li>April 2022 s/d November 2022 oleh <b>dr. H. Deni Darmawan, MARS</b></li>\r\n<li>November 2022 s/d sekarang oleh <b>Plt. dr. H. Agung Darwis Suriaatmadja, M.Kes</b></li>\r\n</ol>\r\n<h2>Kedudukan</h2>\r\n<p style=\"text-align: justify;\">RSUD Bayu Asih adalah fasilitas pelayanan kesehatan milik Pemerintah Daerah Kabupaten Purwakarta dengan karakteristik dan organisasi yang bersifat khusus untuk mendukung penyelenggaraan pelayanan kesehatan daerah.</p>\r\n<p style=\"text-align: justify;\">RSUD Bayu Asih dipimpin oleh Direktur, yang merupakan jabatan eselon IIb atau jabatan pimpinan tinggi pratama serta seorang tenaga medis yang memiliki kemampuan dan keahlian di bidang perumahsakitan. Direktur bertanggung jawab kepada Kepala Dinas Kesehatan Kabupaten Purwakarta yang dilaksanakan melalui penyampaian laporan keuangan, laporan penggunaan dan penatausahaan barang milik daerah dan laporan bidang kepegawaian. Penyampaian laporan tersebut merupakan pertanggungjawaban bersifat khusus/manajemen terbatas yang digunakan untuk sinkronisasi pencapaian hasil pembangunan kesehatan daerah.</p>\r\n<h2>Tugas Pokok dan Fungsi</h2>\r\n<p style=\"text-align: justify;\">RSUD Bayu Asih mempunyai tugas menyelenggarakan sebagian urusan pemerintahan bidang kesehatan, aspek penyelenggaraan tata kelola rumah sakit dan tata kelola klinis untuk mewujudkan kesehatan paripurna secara berdaya guna dengan mengutamakan upaya penyembuhan dan pemulihan secara serasi, terpadu dengan upaya pencegahan, serta pelayanan rujukan dan tugas pembantuan yang ditugaskan kepada Pemerintah Daerah.</p>\r\n<p>Dalam melaksanakan tugas dimaksud, RSUD Bayu Asih menyelenggarakan fungsi sebagai berikut :</p>\r\n<ol>\r\n<li style=\"text-align: justify;\">Fungsi dalam ruang lingkup tata kelola klinis (fungsi yang berorientasi langsung kepada pengguna layanan rumah sakit)</li>\r\n<li style=\"text-align: justify;\">Fungsi dalam ruang lingkup tata kelola rumah sakit (fungsi penunjang pelayanan rumah sakit)</li>\r\n<li style=\"text-align: justify;\"><span style=\"font-size: 1rem; text-align: left;\">Pelaksanaan tugas lain yang diberikan oleh Bupati dan/atau ketentuan perundangan sesuai dengan tugas dan fungsinya.</span><br></li></ol>', 'Publish', 'Profil', '', 'Bajoe-Asih-Depan.jpg', 'fa fa-globe', 776, '2019-05-17 04:37:00', '2019-05-17 04:36:00', '2023-09-20 03:24:40'),
(4, 4, 1, 'profil-rumah-sakit', 'Profil Rumah Sakit', 'Memuat Visi, Misi, Nilai atau Value dan Motto kami sebagai satu-satunya rumah sakit umum daerah milik Pemerintah Kabupaten Purwakarta', '<p><strong>VISI</strong></p>\r\n<p>Visi RSUD Bayu Asih adalah<strong> “Menjadi Rumah Sakit yang profesional dan dipercaya “</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>MISI</strong></p>\r\n<p>Misi RSUD Bayu Asih adalah <strong>“Meningkatkan dan mengoptimalkan Sumber Daya Rumah Sakit”</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>F</strong><strong>ALSAFAH</strong></p>\r\n<p>Falsafah RSUD Bayu Asih yaitu<strong> CEKAS</strong>, yang diuraikan menjadi seperti uraian berikut :</p>\r\n<p>C&nbsp; : CEPAT, TEPAT,&nbsp; AKURAT</p>\r\n<p>E&nbsp; : EMPATI</p>\r\n<p>K&nbsp; : KOMUNIKASI YANG BAIK</p>\r\n<p>A&nbsp; : AMANAH TERHADAP PEKERJAAN</p>\r\n<p>S&nbsp; : SENYUM SAPA SALAM</p>\r\n<p>&nbsp;</p>\r\n<p><strong>NILAI – NILAI</strong></p>\r\n<p>Nilai-nilai dasar RSUD Bayu Asih tercermin dalam jati diri “BAYU ASIH” yaitu:</p>\r\n<p>B&nbsp; : Budi Pekerti Luhur</p>\r\n<p style=\"line-height: 1;\">A : Asih Asah Asuh</p>\r\n<p style=\"line-height: 1;\">Y : Yakin</p>\r\n<p style=\"line-height: 1;\">U : Utamakan Pasien</p>\r\n<p>A : Akuntabilitas</p>\r\n<p>S : Sabar</p>\r\n<p>I &nbsp; : Ikhlas</p>\r\n<p>H : Hati Nurani</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Budi Pekerti Luhur</strong></p>\r\n<p style=\"text-align: justify;\">Seluruh pegawai RSUD Bayu Asihmemiliki karakter budi pekerti yang luhur dan sopan santun yang terpuji baik didalam lingkungan rumah sakit maupun dilingkungan keluarga atau tempat tinggalnya. Seluruh pegawai RSUD Bayu Asih mampu menjadi nyala api penerang yang memancar sifat-sifat dan watak dengan budi pekerti yang luhur serta sopan santun dimanapun ia berada.</p>\r\n<p><strong>Asih Asah Asuh</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD bayu asih memiliki sifat saling mengasihi baik kepada pasien dan keluarganya serta kepada seluruh pengunjung rumah sakit, maupun kepada sesama pegawai dilingkungan RSUD Bayu Asih.Setiap pegawai senantiasa mengasahpikiran dan jiwa terhadap nilai-nilai kemanusiaan, saling mengingatkan dalam hal kebaikan serta kebajikan.Setiap pegawai RSUD Bayu Asih senantiasa saling mengasuh dan membimbing, yang lebihg tua selalu mengasuh dan membimbing kepada yang lebih muda selalu mengasihi kepada yang lebih tua.</p>\r\n<p><strong>Yakin</strong></p>\r\n<p style=\"text-align: justify;\">Seluruh pegawai RSUD Bayu Asih sealalu berpegang teguh dan yakin akan nilai-nilai keluhuran dan kemuliaan. Selalu yakin dalam berfikir, berucap dan bertindak sepanjang tidak melanggar norma-norma di masyarakat. Yakin akan kemampuannya dalam memberikan pelayanan yang terbaik kepada masyarakat sepanjang selalu berpegang pada aturan-aturan dan prosedur yang berlaku dilingkungan RSUD Bayu Asih.</p>\r\n<p><strong>Utamakan Pasien</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD Bayu Asih dalam keadaan dan kondisi apapun tetap mengutamakan kepentingan pasien.Bagi pegawai RSUD Bayu asih, keselamatan jiwa dan kesehatan pasien selalu menjadi tujuan pelayanan yang utama.</p>\r\n<p><strong>Akuntabilitas</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD Bayu Asih dalam memberikan pelayanan selalu siap dan bersedia untuk bertanggung jawab secara moril kepada masyarakat.Setiap tindakan yang dilakukan dapat dipertanggung jawabkan sesuai dengan kaidah dan norma-norma hokum serta perundang-undangan yang berlaku.RSUD Bayu asih dalam pengelolaan manajemen administrasi keuangan juga selalu dapat dipertanggungjawabkan, baik secara moril kepada masyarakat maupun secara hukum sesuai dengan perundang undangan yang berlaku.</p>\r\n<p><strong>Sabar</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD Bayu asih selalu sabar dalam memberikan pelayanan yang terbaik kepada masyarakat, setiap pegawai RSUD Bayu asih menyadari bahwa pasien dan pengunjung berasal dari seluruh lapisan masyarakat yang cukup beragam karakter dan wataknya, serta kondisi emosionalnya yang labil karena kepanikan dan kecemasan.</p>\r\n<p><strong>Ikhlas</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD Bayu Asih dalam memberikan pelayanan kepada masyarakat selalu ikhlas dan tanpa pamrih apapun.Prinsip pengabdian terhadap nilai-nilai profesionalisme selalu dijunjung tinggi.</p>\r\n<p><strong>Hati Nurani</strong></p>\r\n<p style=\"text-align: justify;\">Setiap pegawai RSUD Bayu Asih dalam memberikan pelayanan kepada masyarakat selalu menggunakan hati nurani sebagai pijakan dalam berfikir, berucap dan bertindak. Prinsip ikut bersimpati dan ikut berempati terhadap apa yang dirasakan oleh pasien dan keluarganya selalu menjadi landasan dalam memberikan pelayanan. Dalam memberikan pelayanan tidak pernah membeda-bedakan strata ekonomi dan sosialnya, suku, agama dan ras.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TUJUAN RUMAH SAKIT</strong></p>\r\n<p style=\"text-align: justify;\">Tujuan Rumah Sakit diselenggarakan berasaskan Pancasila dan didasarkan kepada nilai kemanusiaan, etika dan profesionalitas, manfaat, keadilan, persamaan hak dan anti diskriminasi, pemerataan, perlindungan dan keselamatan pasien, serta mempunyai fungsi sosial. Adapun pengaturan penyelenggaraan rumah sakit bertujuan :</p>\r\n<ol>\r\n<li>mempermudah akses masyarakat untuk mendapatkan pelayanan kesehatan</li>\r\n<li style=\"text-align: justify;\">memberikan perlindungan terhadap keselamatan pasien, masyarakat, lingkungan rumah sakit dan sumber daya manusia di rumah sakit</li>\r\n<li style=\"text-align: justify;\">meningkatkan mutu dan mempertahankan standar pelayanan rumah sakit; dan memberikan kepastian hukum kepada pasien, masyarakat, sumber daya manusia rumah sakit</li>\r\n</ol>', 'Publish', 'Profil', '', 'IMG_2244.jpg', 'fas fa-check-circle', 940, '2019-07-26 10:38:15', '2019-07-26 10:36:00', '2023-09-20 16:17:54'),
(6, 4, 6, 'penunjang-medik', 'Penunjang Medik', 'Pelayanan Penunjang Medik kami terdiri dari Laboratorium, Radiologi, Farmasi, Rehabilitasi Medik, Pelayanan Gizi, CSSD dan Kamar Jenazah', '<p>Pelayanan Penunjang Medis terdiri dari:</p>\r\n<ol>\r\n<li>Pelayanan Laboratorium Patologi Klinik (PK)</li>\r\n<li>Pelayanan Laboratorium Patologi Anatomi (PA)</li>\r\n<li>Pelayanan Bank Darah</li>\r\n<li>Pelayanan Radiologi</li>\r\n<li>Pelayanan Rehabilitasi Medik dan Kedokteran Fisik</li>\r\n<li>Pelayanan Farmasi</li>\r\n<li>Pelayanan Rekam Medis</li>\r\n<li>Pelayanan Gizi</li>\r\n<li>Pelayanan Kamar Jenazah</li>\r\n</ol>', 'Publish', 'Layanan', '', 'IMG_5473.jpg', 'fa fa-chart-bar', 871, '2020-02-13 07:42:56', '2020-02-13 07:41:00', '2023-09-19 20:44:52'),
(7, 4, 6, 'pelatihan-penggulangan-bencana', 'Pelatihan Penggulangan Bencana', 'RSUD Bayu Asih Kabupaten Purwakarta melaksanakan Pelatihan dan Simulasi Penanggulangan Bencana dan Kebakaran bekerja sama dengan Dinas Pemadam dan BPBD Purwakarta', '<p style=\"text-align: justify;\">RSUD Bayu Asih Kabupaten Purwakarta melaksanakan Pelatihan dan Simulasi Penanggulangan Bencana dan Kebakaran melalui Instalasi Pendidikan dan Penelitian (DIKLIT) yang bekerja sama dengan Dinas Pemadam Kebakaran dan Penanggulangan Bencana dan Badan Penanggulangan Bencana Daerah (BPBD) Kabupaten Purwakarta.&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_D2A1861.JPG\" alt=\"\" width=\"322\" height=\"181\" /><img src=\"../../../assets/upload/image/_D2A1932.JPG\" alt=\"\" width=\"322\" height=\"181\" /></p>\r\n<p style=\"text-align: justify;\">Pelatihan dan Simulasi ini dilaksanakan selama 3 (tiga) hari dari tanggal 18-20 Oktober 2022, peserta pelatihan ini adalah seluruh pegawai RSUD Bayu Asih.</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_D2A2009.JPG\" alt=\"\" width=\"329\" height=\"185\" /></p>\r\n<p style=\"text-align: justify;\">Tujuan pelaksanaan pelatihan dan simulasi ini, untuk meningkatkan ilmu dan keterampilan dalam menanggulangi bencana dan kebakaran jika terjadi di lingkungan RSUD Bayu Asih sebagai standar keselamatan dalam penggulangan kebakaran dan bencana.</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_D2A2061.JPG\" alt=\"\" width=\"324\" height=\"182\" /></p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_D2A1622.JPG\" alt=\"\" width=\"325\" height=\"183\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'Publish', 'Berita', '', '_D2A1861.JPG', '', 392, '2020-02-13 07:45:07', '2020-10-28 07:44:00', '2023-09-20 10:46:43'),
(21, 4, 6, 'gempungan-buruan-urang-lembur', 'Gempungan Buruan Urang Lembur', 'RSUD Bayu Asih Kabupaten Purwakarta ikut serta dalam pelayanan jemput bola di Desa Cibening, Kecamatan Bungursari Kabupaten Purwakarta', '<p style=\"text-align: justify;\">RSUD Bayu Asih Kabupaten Purwakarta ikut serta dalam pelayanan jemput bola di Desa Cibening, Kecamatan Bungursari Kabupaten Purwakarta. Kegiatan ini disebut <strong>Gempungan di Buruan Urang Lembur</strong>.</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_DP_3010.JPG\" alt=\"\" width=\"399\" height=\"225\" /></p>\r\n<p style=\"text-align: justify;\">Kegiatan yang dilakukan oleh Pemerintah Daerah Kabupaten Purwakarta rutin dilakukan setiap minggu pada hari rabu. Namun kali ini dikarenakan ada agenda lain pada hari rabu maka dilaksanakan pada hari Selasa, 1 November 2022. Kegiatan ini kami melayani kurang lebih 200 orang warga Desa Cibening, alhamdulilah berjalan dengan lancar dan semoga kami terus mengikuti kegiatan ini sesuai program pemerintah.</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/_DP_2714.JPG\" alt=\"\" width=\"396\" height=\"223\" /></p>', 'Publish', 'Berita', '', '_DP_2697_2.jpg', '', 407, '2021-04-24 08:03:21', '2022-11-01 13:10:00', '2023-09-20 15:29:08'),
(22, 5, 6, 'penghargaan-terbaik-ke-3-pusat-layanan-kecelakaan-kerja-plkk', 'Penghargaan Terbaik ke 3 Pusat Layanan Kecelakaan Kerja (PLKK)', 'Menerima Penghargaan Terbaik ke III pada Pusat Layanan Kecelakaan Kerja (PLKK) BPJS Ketenagakerjaan', '<p style=\"text-align: justify;\">Penghargaan Terbaik ke 3 Pada hari ini Selasa, 15 November 2022, RSUD Bayu Asih Kabupaten Purwakarta mendapatkan Penghargaan Terbaik ke 3 Pusat Layanan Kecelakaan Kerja (PLKK) Tahun 2022 dari BPJS Ketenagakerjaan.<br />Pemberian pengharagaan bertempat di Hotel Harper Purwakarta dalam acara Pembinaan dan Optimalisasi Layanan Mitra Pusat Layanan Kecelakaan Kerja (PLKK) Tahun 2022, penerimaan penghargaan diwakili oleh Ibu Derry Taria Nispianti, S.E. (Instalasi Penglola Klaim RSUD Bayu Asih)</p>', 'Publish', 'Berita', '', 'WhatsApp-Image-2022-11-15-at-14.14.27-(2).jpeg', '', 384, '2021-04-24 08:05:28', '1970-01-01 00:00:00', '2023-09-18 10:13:45'),
(23, 4, 1, 'struktur-organisasi', 'Struktur Organisasi', 'Struktur Organisasi RSUD Bayu Asih Kabupaten Purwakarta berdasarkan Peraturan Bupati Purwakarta Nomor 253 Tahun 2021', '<p style=\"text-align: justify;\">Berdasarkan Peraturan Bupati Purwakarta Nomor 253 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas Dan Fungsi Daerah, maka struktur organisasi RSUD Bayu Asih adalah sebagai berikut :</p>\r\n<ol>\r\n<li>Direktur</li>\r\n<li>Wakil Direktur Pelayanan</li>\r\n<li>Wakil Direktur Umum dan Keuangan</li>\r\n<li>Satuan Pengawas Internal (SPI)</li>\r\n<li>Komite</li>\r\n<li>Instalasi</li>\r\n<li>Kelompok Jabatan Fungsional</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">Wakil Direktur Pelayanan membawahi :</p><ol><li style=\"text-align: justify;\">Bidang Pelayanan Medis</li><li style=\"text-align: justify;\">Bidang Penunjang Medis</li><li style=\"text-align: justify;\">Bidang Keperawatan</li></ol><p style=\"text-align: justify;\">Wakil Direktur Umum dan Keuangan membawahi :</p><ol><li style=\"text-align: justify;\">Bagian Perencanaan dan Pelaporan</li><li style=\"text-align: justify;\">Bagian Umum dan Hukum</li><li style=\"text-align: justify;\">Bagian Keuangan</li></ol><p style=\"text-align: justify;\">Bagan Struktur Organisasi dan Tata Kerja (SOTK) RSUD Bayu Asih Kabupaten Purwakarta selengkapnya dapat dilihat pada tabel di bawah ini:</p>', 'Publish', 'Profil', '', 'Bagan.jpg', 'fa fa-book', 886, '2021-04-24 11:59:48', '1970-01-01 00:00:00', '2023-09-16 12:47:56'),
(25, 4, 6, 'layanan-unggulan', 'Layanan Unggulan', 'Kami memiliki sejumlah layanan unggulan yaitu Pelayanan Thallasemia, Kolonoskopi, Endoskopi dan Pelayanan Laboratorium Patologi Anatomi (PA)', '<p>RSUD Bayu Asih memiliki layanan unggulan, diantaranya :<br /><strong>1. Thalasemia</strong></p>\r\n<p style=\"text-align: justify;\">Talasemia adalah penyakit keturunan (kelainan genetik) akibat kelainan sel darah merah yang dapat menyebabkan penderita harus melakukan transfusi darah sepanjang usianya. Penyakit tersebut bisa dicegah melalui deteksi dini.</p>\r\n<p style=\"text-align: justify;\">Talasemia dapat diturunkan dari perkawinan antara dua orang pembawa sifat. Seorang pembawa sifat talasemia secara kasat mata tampak sehat (tidak bergejala), hanya bisa diketahui melalui pemeriksaan darah dan analisis hemoglobin.</p>\r\n<p><strong>2. Kolonoskopi</strong></p>\r\n<p><strong>Kolonoskopi adalah</strong> prosedur untuk mendeteksi luka, iritasi, polip atau kanker pada usus besar dan rektum, yaitu bagian paling bawah usus besar yang terhubung ke anus. Prosedur ini dilakukan dengan didahului pemberian obat bius kepada pasien.</p>\r\n<p><img src=\"../../../assets/upload/image/Colonoscopy.jpg\" alt=\"\" width=\"252\" height=\"146\" /><br /><strong>3. Endoskopi</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Endoskopi adalah prosedur medis yang dilakukan dengan memasukkan alat khusus ke dalam organ internal Anda</strong>. Pemeriksaan ini memungkinkan dokter untuk mendiagnosis masalah pada tubuh Anda tanpa melakukan pembedahan besar.</p>\r\n<p style=\"text-align: justify;\"><img src=\"../../../assets/upload/image/Endoskopi.jpeg\" alt=\"\" width=\"255\" height=\"144\" /></p>\r\n<p style=\"text-align: justify;\"><strong>4. Patologi Anatomi</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Patologi anatomi adalah</strong>&nbsp;cabang kedokteran yang mempelajari efek&nbsp;<strong>penyakit</strong>&nbsp;pada struktur organ tubuh, baik secara keseluruhan (kasar) maupun secara mikroskopis</p>\r\n<p><img src=\"../../../assets/upload/image/IMG_5473.jpg\" alt=\"\" width=\"253\" height=\"142\" /></p>', 'Publish', 'Layanan', '', 'Colonoscopy.jpg', 'fa fa-chart-bar', 929, '2022-11-06 04:28:34', '2022-11-06 04:28:00', '2023-09-20 15:01:59'),
(26, 4, 5, 'mengenal-covid-19', 'Mengenal Covid-19', 'Apa itu penyakit Covid-19 yang telah menjadi bencana terhadap kehidupan umat manusia', '<p style=\"text-align: justify;\"><strong>Sejarah Penemuan</strong></p>\r\n<p style=\"text-align: justify;\">Pada tanggal 31 Desember 2019,&nbsp;<em>World Health Organization</em>&nbsp;(WHO) mendapatkan informasi mengenai kasus pneumonia yang terjadi di kota Wuhan, Provinsi Hubei, Cina.</p>\r\n<p style=\"text-align: justify;\">Tanggal 7 Januari 2020, otoritas Cina mengkonfirmasi telah mengidentifikasi virus baru, yaitu virus Corona, yang merupakan famili virus flu, seperti virus SARS dan MERS, yang mana dilaporkan lebih dari 2.000 kasus infeksi virus tersebut terjadi di Cina, termasuk di luar Provinsi Hubei.</p>\r\n<p style=\"text-align: justify;\">Virus Corona (CoV) merupakan famili virus yang menyebabkan penyakit mulai dari flu biasa hingga penyakit yang lebih berat sepert<em>i Middle East Respiratory Syndrome</em>&nbsp;(MERS-SoV) dan<em>&nbsp;Severe Acute Respiratory Syndrome</em>&nbsp;(SARS-CoV). Pada 11 Februari 2020, WHO mengumumkan nama virus Corona jenis baru tersebut adalah&nbsp;<strong><em>Corona&nbsp;Virus Disease 2019</em>&nbsp;(disingkat menjadi COVID-19)</strong>.</p>\r\n<p style=\"text-align: justify;\"><strong>Masa Inkubasi</strong></p>\r\n<p style=\"text-align: justify;\">Masa inkubasi dapat bervariasi antar pasien, yaitu&nbsp;<strong>2-14 hari setelah terpapar virus&nbsp;</strong>berdasarkan periode inkubasi yang ditunjukkan sebelumnya pada virus MERS.&nbsp;Masa inkubasi 24 hari telah diamati dalam penelitian terbaru. WHO mengatakan periode inkubasi yang panjang dapat mencerminkan paparan ganda&nbsp;<em>Coronavirus</em>.</p>\r\n<p style=\"text-align: justify;\">Menurut laporan terbaru, ada kemungkinan orang yang terinfeksi Covid-19 dapat menular sebelum menunjukkan gejala yang signifikan.</p>\r\n<p style=\"text-align: justify;\"><strong>Penularan</strong></p>\r\n<p style=\"text-align: justify;\">Penularan dari orang ke orang diperkirakan terjadi&nbsp;melalui droplet ketika orang yang terinfeksi batuk atau bersin, mirip dengan bagaimana influenza dan patogen pernapasan lainnya yang dapat terhirup ke dalam paru-paru.</p>\r\n<p style=\"text-align: justify;\">Penularan Covid-19 dapat juga terjadi dengan menyentuh permukaan atau objek yang memiliki virus di atasnya dan kemudian orang tersebut menyentuh mulut, hidung, atau mungkin mata mereka sendiri.</p>\r\n<p style=\"text-align: justify;\"><strong>Adakah Antibiotik untuk Mencegah dan Mengobati Covid-19?</strong></p>\r\n<p style=\"text-align: justify;\">Antibiotik tidak bekerja melawan virus. Antibiotik digunakan hanya untuk melawan bakteri. Antibiotik tidak boleh digunakan sebagai sarana pencegahan atau pengobatan infeksi virus. Namun, antibiotik akan diberikan karena infeksi sekunder bakteri mungkin terjadi saat pasien tersebut dirawat di rumah sakit.</p>\r\n<p style=\"text-align: justify;\"><strong>Pencegahan Penularan Covid-19</strong></p>\r\n<p style=\"text-align: justify;\">1. Cuci tangan selama 20 detik dengan sabun dan air mengalir sesuai dengan standar WHO</p>\r\n<p style=\"text-align: justify;\">2. Hindari kerumunan/keramaian</p>\r\n<p style=\"text-align: justify;\">3. Jaga posisi jarak dengan orang lain</p>\r\n<p style=\"text-align: justify;\">4. Hindari melakukan kontak langsung dengan orang yang sakit</p>\r\n<p style=\"text-align: justify;\">5. Konsumsi secara rutin vitamin yang dapat meningkatkan kekebalan tubuh saat sehat dan mempercepat penyembuhan saat sedang sakit</p>\r\n<p style=\"text-align: justify;\">6. Gunakan masker saat keluar rumah</p>\r\n<p style=\"text-align: justify;\">7. Membersihkan dan mendisinfeksi&nbsp;secara berkala barang-barang yang sering disentuh&nbsp;</p>\r\n<p style=\"text-align: justify;\">8. Mendapatkan&nbsp;vaksinasi Covid-19 sesuai dosis dan anjuran yang berlaku</p>\r\n<p style=\"text-align: justify;\">Sumber : https://vivahealth.co.id/article/detail/13439/mengenal-covid-19</p>', 'Publish', 'Berita', '', 'covid.jpeg', '', 392, '2022-11-27 03:27:41', '2022-11-27 03:25:00', '2023-09-13 20:26:46'),
(28, 4, 7, 'laporan-capaian-indikator-mutu', 'Laporan Capaian Indikator Mutu', 'Merupakan laporan capaian indikator mutu RSUD Bayu Asih', '<p style=\"text-align: center;\"><img src=\"https://bayuasih.org/assets/upload/image/Slide1.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide2.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide3.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide4.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide5.JPG\" style=\"width: 50%;\"><br></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide6.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide7.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide8.JPG\" style=\"width: 50%;\"><br></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide9.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide10.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide11.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide12.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide13.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide14.JPG\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/Slide15.JPG\" style=\"width: 50%;\"><br></p>', 'Publish', 'Berita', '', 'Cover-Buku-Saku.jpg', '', 514, '2022-12-07 03:15:04', '2022-12-07 03:14:00', '2023-09-12 17:14:46'),
(29, 4, 6, 'peresmian-balai-rehabilitasi-napza-adhyaksa-kabupaten-purwakarta', 'Peresmian Balai Rehabilitasi Napza Adhyaksa Kabupaten Purwakarta', 'Pemerintah Kabupaten Purwakarta dengan Kejaksaan Negeri Purwakarta melakukan Peresmian dan Penanda Tanganan Perjanjian Kerja Sama Balai Rehabilitas Napza Adhyaksa Kabupaten Purwakarta.', '<p style=\"text-align: justify;\">Purwakarta, 7 Desember 2022, Bupati Purwakarta Ibu Anne Ratna Mustika bersama Kepala Kejaksaan Negeri Kabupaten Purwakarta melaksanakan Peresmian dan Penanda Tanganan Perjanjian Kerja Sama Balai Rehabilitasi Napza Adhyaksa Kabupaten Purwakarta yang bertempat di Aula Pendopo Purwakarta.</p><p style=\"text-align: justify;\"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2022-12-07-at-16.12.59-%281%29.jpeg\" style=\"width: 50%;\"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2022-12-07-at-16.12.55.jpeg\" style=\"width: 50%;\"><br></p>\r\n<p style=\"text-align: justify;\"></p>\r\n<p style=\"text-align: justify;\">Turut hadir unsur Forkopimda, Jajaran Kejaksaan Negeri Purwakarta, Sekretaris Daerah, Staf Ahli, Kepala Perangkat Daerah, BNNK Karawang, dan para tamu undangan.</p><p style=\"text-align: justify;\"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2022-12-07-at-16.13.00.jpeg\" style=\"width: 50%;\"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2022-12-07-at-16.12.59.jpeg\" style=\"width: 50%;\"><br></p>\r\n<p style=\"text-align: justify;\"></p>\r\n<p style=\"text-align: justify;\">Diharapkan dengan diresmikannya Balai Rehabilitasi NAPZA Adhyaksa Kabupaten Purwakarta, Penyalahgunaan NAPZA agar dapat dibina dan tidak mengulangi perbuatannya dan ketika selesai proses rehabilitasi dapat diterima kembali oleh masyarakat sebagai agen perubahan anti NAPZA.</p><p style=\"text-align: justify;\"><img src=\"https://bayuasih.org/assets/upload/image/_DP_6552.jpg\" style=\"width: 50%;\"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2022-12-07-at-16.12.58.jpeg\" style=\"width: 50%;\"><br></p>\r\n<p style=\"text-align: justify;\"></p>', 'Publish', 'Berita', 'Balai Rehabilitasi Napza ', 'WhatsApp-Image-2022-12-07-at-16.12.55.jpeg', '', 376, '2022-12-08 10:58:40', '2022-12-08 10:44:00', '2023-09-18 07:07:05'),
(33, 5, 8, 'jadwal-praktik-dokter', 'Jadwal Praktik Dokter', 'Jadwal Praktik Dokter', '<p style=\"text-align: center; \"><img src=\"https://bayuasih.org/assets/upload/image/SS_112.png\" style=\"width: 616.475px; height: 972.907px;\"><br></p>', 'Publish', 'Berita', '', 'Praktek-Dokter.jpg', '', 2048, '2022-12-09 02:58:24', '2022-12-09 02:56:00', '2023-09-12 17:10:34'),
(34, 4, 9, 'tarif-pelayanan', 'Tarif Pelayanan ', 'Tarif Pelayanan', '<p style=\"text-align: left;\"><img src=\"https://bayuasih.org/assets/upload/image/Final-Leaflet-Revisi-hal-1.jpg\" style=\"width: 50%;\"><img src=\"https://bayuasih.org/assets/upload/image/Final-Leaflet-Revisi.jpg\" style=\"text-align: justify; font-size: 1rem; width: 50%;\"></p>', 'Publish', 'Berita', '', 'Final-Leaflet-Revisi-hal-1.jpg', '', 970, '2022-12-09 03:01:53', '2022-12-09 03:00:00', '2023-09-12 16:41:48'),
(35, 5, 6, 'sosialiasi-pelayanan-rumah-sakit', 'SOSIALIASI PELAYANAN RUMAH SAKIT', 'RSUD Bayu Asi Kabupaten Purwakarta melakukan Sosialisasi Pelayanan Rumah Sakit kepada Tokoh Masyarakat dan Fasilitas Kesehatan di sekitar lingkungan rumah sakit', '<p><img src=\"https://bayuasih.org/assets/upload/image/_DP_7074.JPG\" style=\"width: 174.672px; float: left; height: 98.2517px;\" class=\"note-float-left\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"></span></p><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Kamis, 15 Desember 2022, RSUD Bayu Asih melakukan Sosialisasi Pelayanan Rumah Sakit kepada tokoh masyarakat, fasilitas kesehatan lain di lingkungan sekitar RSUD Bayu Asih, Kecamatan Purwakarta, Kelurahan Nagri Kaler, Ketua RW, Puskesmas Munjul, Puskesmas Mukyamekar, Puskesmas Koncara dan Puskesmas Purwakarta.</span></div><p></p><p style=\"text-align: justify; \"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Plt. Direktur RSUD Bayu Asih Kabupaten Purwakarta, dr. H. Agung Darwis Suriaatmadja, M.Kes, memaparkan informasi Pelayanan terbaru yang tersedia di RSUD Bayu Asih salah satunya Dokter Bedah Saraf, serta layanan unggulan, seperti Pelayanan Thalasemia, Pelayanan Endoskopi, Pelayanan Kolonoskopi dan Patologi Anatomi.</span></p><p style=\"text-align: justify; \"><img src=\"https://bayuasih.org/assets/upload/image/_DP_7050.JPG\" style=\"width: 50%;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"></p><p></p><h5 style=\"text-align: justify;\"></h5><p></p>', 'Publish', 'Berita', '', '_DP_7031.JPG', '', 397, '2022-12-15 13:58:02', '2022-12-15 13:49:00', '2023-09-12 17:29:36');
INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(36, 5, 6, 'kunjungan-komisi-iii-dprd-kabupaten-purwakarta', 'Kunjungan Komisi III DPRD Kabupaten Purwakarta', 'Komis III DPRD Kabupaten Purwakarta melakukan kunjungan ke RSUD Bayu Asih dalam rangka meninjau Paviliun Dahlia yang dalam masa proses renovasi.', '<p><div style=\"text-align: justify;\"><img src=\"data:image/jpeg;base64,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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEbAAAAAIAAAABAAAAmAAAAAoAAAEBAAAAAQAAAAAAAAECAAAAAQAAAAAAAAEEAAAAAQAAAAAAAAEFAAAAAQAAAAAAAAEGAAAAAQAAAAMAAAEIAAAAAQAAAAAAAAEMAAAABAAAJwD///EAAAAnAP//8QAAAAENAAAABAAAJwAAAAAAAAAbAAAADDAAAAESAAAAAQAAAAAAAAEUAAAAAQAAAAEAAAAEAAADxAAAAAsAAAcGAAAAAQAAAAAAAAcSAAAAAQAAAAAAAAcTAAAAAQAAAAAAAAcUAAAAAQAAAAAAAAcMAAAAZQAAABMAAAAAAAAAEwAAAAAAAAAAAAAA/wAAAP8AAAD/AAAAAwAAAAAAAAAAAAAA/wAAAP8AAAD/AAAAEgAAAAAAAAAEAAAAAAAAADUAAAAAAAAAGQAAAAAAAAAlAAAAAAAAAA0AAAAAAAAADgAAAAIAAAAOAAAAAgAAAB0AAAAAAAAAHQAAAAAAAABMAAAAAAAAAEsAAAAAAAAASwAAAAAAAABMAAAAAAAAABcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFoAAAAAAAAAHQAAAAAAAAA2AAAAAAAAAE4AAAAAAAAAVwAAAAAAAABnAAAAAAAAACcAAAAAAAAAaQAAAAAAAP//AAAAAAAAAAMAABUAAAAPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHAAAAAwAAAAQAAAAfAAAAAQAAAAIAAAADAAAABAAAAAUAAAABAAAHFQAAAGsAAAABAAAACAAAAAEAAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsAAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAeAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAAAAFwAAAAAAAAAAAAAAHwAAAAAAAAAAAAAAAAAAAA8AAAAdAAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwAAAA8AAAAAAQAAAAEAAAAAAAAAAAAAFFAAABRQAAAAAQAAAAEAAAAfAAAAHwAADwAAAA8AAAAAAQAAAAEAAAAAAAAAAAAAFFAAABRQAAAAAQAAAAEAAAAAAAAAAAAACA4AAAABAAAAAAAACBMAAAABAAAAAAAABxEAAAAB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RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wOlJhdGluZz0iMCIvPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw/eHBhY2tldCBlbmQ9InciPz7/4gHwSUNDX1BST0ZJTEUAAQEAAAHgAAAAAAIAAABtbnRyUkdCIFhZWiAH0AABAAEAAAAAAABhY3NwTVNGVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAl3dHB0AAAA8AAAABRyVFJDAAABBAAAAA5nVFJDAAABFAAAAA5iVFJDAAABJAAAAA5yWFlaAAABNAAAABRnWFlaAAABSAAAABRiWFlaAAABXAAAABRjcHJ0AAABcAAAAAlkZXNjAAABgAAAAGBYWVogAAAAAAAA81EAAQAAAAEWzGN1cnYAAAAAAAAAAQIzAABjdXJ2AAAAAAAAAAECMwAAY3VydgAAAAAAAAABAjMAAFhZWiAAAAAAAACcGAAAT6UAAAT8WFlaIAAAAAAAADSNAACgLAAAD5VYWVogAAAAAAAAJjEAABAvAAC+nHRleHQAAAAAAAAAAAAAAABkZXNjAAAAAAAAAAZvcFJHQgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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', 'Publish', 'Berita', 'Renovasi Paviliun Dahlia\r\nRSUD Bayu Asih\r\nKunjungan Kerja DPRD Kabupaten Purwakarta', '_DP_7470.JPG', '', 389, '2022-12-22 08:53:26', '2022-12-22 08:39:00', '2023-09-18 06:24:10');
INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(38, 5, 6, 'paviliun-dahlian-diresmikan-bupati-purwakarta', 'Paviliun Dahlian Diresmikan Bupati Purwakarta', 'Bupati Purwakarta ibu Anne Ratna Mustika meresmikan Ruang Paviliun Dahlia RSUD Bayu Asih', '<p style=\"text-align: justify; \">Pada hari Kamis 29 Desember 2022, Bupati Purwakarta Ibu Anne Ratna Mustika meresmikan Ruang Paviliun Dahlia, didampingi oleh Sekretaris Daerah bapak Norman Nugraha yang juga sebagai Ketua Dewan Pengawas Rumah Sakit pada RSUD Bayu Asih. Ruang Paviliun Dahlia ini untuk memenuhi keinginan masyarakat Kabupaten Purawkarta dalam pelayanan kesehatan rawat inap berkelas VIP dan VVIP, ruangan tersebut memiliki kapasitas 13 tempat tidur, terdiri dari 6 tempat tidur untuk VIP B, 6 tempat tidur untuk VIP A dan 1 tempat tidur VVIP (suite room). Walau diresmikan pada penghujung tahun 2022, namun Ruang Paviliun Dahlia ini akan dioperasikan pada pertengahan Januari 2023.</p><p style=\"text-align: justify; \"><img src=\"https://bayuasih.org/assets/upload/image/_DP_8177.JPG\" style=\"width: 50%;\"><br></p><p style=\"text-align: justify; \"><img src=\"https://bayuasih.org/assets/upload/image/_DP_8199.JPG\" style=\"width: 50%;\"></p><p style=\"text-align: justify; \"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: left;\">Pada peresmian ini hadir pula Asda, staf ahli, para kepala perangkat daerah , camat dan Civitas Hospitalia RSUD Bayu Asih</span><br></p><p style=\"text-align: justify; \"></p>', 'Publish', 'Berita', '', 'IMG_0824.JPG', '', 445, '2023-01-03 15:07:17', '2023-01-03 15:06:00', '2023-09-18 02:42:56'),
(39, 5, 6, 'rsud-bayu-asih-paripurna', 'RSUD Bayu Asih Paripurna', 'RSUD Bayu Asih Telah Lulus Akreditasi dengan Perdikat PARIPURNA', '<p style=\"text-align: justify; \"><b>PARIPURNA</b>. RSUD Bayu Asih telah lulus Akreditasi dengan Predikat PARIPURNA, hasil tersebut dikeluarkan dalam Surat Keterangan Hasil Akreditasi, nomor&nbsp;0025.SKH-AKRE.I.2023, tanggal 28 Januari 2023, dari Lembaga Akreditasi Rumah Sakit Damar Husada Paripurna (LARS-DHP). Survei yang dilaksanakan pada tanggal 16, 20 dan 21 Januari 2023 dengan metode daring pada hari pertama survei telusur dokumen dilanjutkan dengan metode luring pada hari kedua dan ketiga survei telusur lapang. Setiap BAB medapat Skor dengan rata-rata 90%, dengan beberapa perbaikan yang harus dilakukan supaya mencapai skor 100%. RSUD Bayu Asih mempunyai waktu selama 45 hari kerja untuk membuat rencana perbaikan atas rekomendasi yang diberikan oleh LARS-DHP<font color=\"rgba(0, 0, 0, 0.87)\" face=\"Source Sans Pro\"><span style=\"font-size: 14px;\">.</span></font></p>', 'Publish', 'Berita', 'RSUD Bayu Asih\r\nAkreditasi Paripurna', 'WhatsApp-Image-2023-01-29-at-08.46.50.jpeg', '', 392, '2023-01-30 09:11:17', '2023-01-30 08:53:00', '2023-09-19 01:33:38'),
(40, 5, 6, 'serah-terima-sertifikat-akreditasi-rs', 'Serah Terima Sertifikat Akreditasi RS', 'Menerima Sertifikat Akreditasi RS dari LARS DHP', '<p style=\"text-align: justify; \"><b>Serah Terima Sertifikat Akreditasi dari Lembaga Akreditasi Rumah Sakit Damar Husada Paripurna (LARS-DHP) kepada RSUD Bayu Asih.</b></p><p style=\"text-align: justify; \"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2023-04-05-at-13.06.13.jpeg\" style=\"width: 50%;\"><b><br></b></p><p style=\"text-align: justify; \">Pada hari ini, Rabu, 5 April 2023, RSUD Bayu Asih memenuhi undangan Penyerahan Sertifikat Akreditasi Rumah Sakit. Penyerahan sertifikat diserahkan langsung oleh Direktur Utama LARS-DHP, dr. R. Heru Ariyadi, MPH, kepada Plt. Direktur RSUD Bayu Asih, dr. H. Agung Darwis Suriaatmadja, M.Kes, bersama Wakil Ketua Tim Akreditasi, dr. Dede Lia Marlia, Sp.A, dan drg. Raden Aan Harjany. Penyerahan sertifikat bertempat di Kantor Sekretariat LARS DHP, Rukan The Royal Palace Blok B No. 31, Jl. Prof. Soepomo No. 178A, Tebet, Jakarta Selatan.<br></p><p style=\"text-align: justify; \"></p>', 'Publish', 'Berita', 'Akreditasi RSUD Bayu Asih', 'WhatsApp-Image-2023-04-05-at-13.06.13.jpeg', '', 426, '2023-04-05 13:39:22', '2023-04-05 13:35:00', '2023-09-20 05:22:20'),
(41, 5, 6, 'layanan-bedah-saraf', 'Layanan Bedah Saraf', 'Bedah Saraf ada Di RSUD Bayu Asih', '<p>RSUD Bayu Asih, memiliki layanan terbaru dan menjadi layanan unggulan. dr. Andre Dwijaya Saputra, Sp.BS merupakan dokter spesialis bedah saraf satu-satunya di Purwakarta yang di miliki RSUD Bayu Asih. Bedah saraf di RSUD Bayu Asih melayani Stroke, Saraf terjepit, Tumor Otak, Kelainan Bawaan Anak seperti Hydrocephalus, Trauma Kepala.<br>Layanan poliklinik Bedah saraf dilakukan setiap hari Selasa, Kamis dan Jumat. Untuk pengguna BPJS Kesehatan dan Asuransi kesehatan yang menjalin kontrak dengan RSUD Bayu Asih juga dapat dilayani.</p>', 'Publish', 'Layanan', 'Bedah saraf', 'bedah-saraf-1.jpg', '', 260, '2023-05-24 09:56:39', '2023-05-24 09:45:00', '2023-09-20 04:16:45'),
(42, 5, 6, 'rsud-bayu-asih-menuju-wbk-wbbm', 'RSUD Bayu Asih Menuju WBK WBBM', 'Penandatangannan Deklarasi RSUD Bayu Asih menuju Wilayah Bebas Korupsi (WBK) dan Wilayah Birokrasi Bersih dan Melayani (WBBM)', '<p style=\"text-align: justify; \"><img src=\"https://bayuasih.org/assets/upload/image/WhatsApp-Image-2023-05-25-at-10.47.09-%282%29.jpeg\" style=\"width: 25%; float: left;\" class=\"note-float-left\"><a href=\"-\" target=\"_blank\">RSUD Bayu Asih siap dalam menuju Wilayah Bebas Korupsi (WBK) dan Wilayah Birokrasi Bersih dan Melayani (WBBM), dengan dilakukannya penandatanganan Deklarasi. Sejumlah pejabat struktural membubuhi tandan tangan pada kolom banner yang sudah disiapkan dilanjutkan oleh para staff pelaksana.</a></p><h6 style=\"text-align: justify; \"><a href=\"-\" target=\"_blank\">Penandatanganan deklarasi adalah bentuk pencangan bahwa RSUD Bayu Asih sebagai unit kerja Zona Integritas berdasarkan Keputusan Bupati Purwakarta nomor : 700/Kep.110-Inspektorat/2023 tentang Penetapan Unit Kerja Zona Integritas Munju Wilayah Bebas Korupsi (WBK) dan Wilayah Birokrasi Bersih dan Melayani (WBBM) di Lingkungan Pemerintah Kabupaten Purwakarta Tahun 2023.</a></h6>', 'Publish', 'Berita', 'Zona Integritas', 'WhatsApp-Image-2023-05-25-at-10.47.09-(1).jpeg', '', 321, '2023-05-25 11:25:18', '2023-04-24 11:08:00', '2023-09-18 15:37:03'),
(43, 5, 6, 'beauty-contest-pengelolaan-perparkiran-rsud-bayu-asih', 'BEAUTY CONTEST PENGELOLAAN PERPARKIRAN RSUD BAYU ASIH', 'Pemilihan Pengelolaan Parkir RSUD Bayu Asih mengundang calon penyedia jasa pengelola parkir untuk ikut dalam Beauty Contest Pengadaan Pengelolaan Parkir Kendaraan di RSUD Bayu Asih', '<blockquote style=\"text-align: justify; \" class=\"blockquote\">Panitia Pemilihan Pengelolaan Parkir RSUD Bayu Asih mengundang calon penyedia jasa pengelola parkir untuk ikut dalam Beauty Contest Pengadaan Pengelolaan Parkir Kendaraan di RSUD Bayu Asih dengan informasi sebagai berikut :</blockquote><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">1. Paket Pekerjaan</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     Nama Paket Pekerjaan : Mitra Pengelolaan Parkir RSUD Bayu Asih</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">   Lingkup Pekerjaan : Mengelola parkir meliputi : parkir internal untuk karyawan rumah sakit, parkir untuk pasien dan keluarga pasien maupun pengunjung rumah sakit.</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">2. Pelaksanaan</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     Tempat dan Alamat : Ruang Aula Krisna RSUD Bayu Asih Jl. Veteran No.39 Purwakarta</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     Website : <a href=\"https://rsudbayuasih.purwakartakab.go.id/\" target=\"_blank\">https://rsudbayuasih.purwakartakab.go.id/</a></span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">3. Jadwal Pelaksanaan :</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     a. Pengumuman Beauty Contest, Kamis, 13 Juli 2023 s/d Sabtu, 15 Juli 2023 08.00 s/d 14.00 WIB</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     b. Pendaftaran dan Pengambilan Dokumen serta Pemberian Penjelasan Senin, 17 Juli 2023 s/d Selasa, 18 Juli 2023 09.00  s/d 14.00 WIB</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">    c. Pemasukan Dokumen Penawaran Kamis, 20 Juli 2023 s/d Sabtu, 22 Juli 2023 09.00 s/d 12.00 WIB</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">    d. Pembukaan Dokumen Penawaran Sabtu, 22 Juli 2023 13.00 WIB s/d Selesai</span><br></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\">    e. Pemeriksaan, Evaluasi Penawaran dan Pelaksanaan Beauty Contest Senin, 24 Juli 2023 s/d Selasa, 25 Juli 2023 09.00 WIB s/d Selesai</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">    f. Berita Acara Hasil Contest Selasa, 25 Juli 2023 Setelah selesai pelaksanaan Beauty Contest</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">    g. Penetapan Pemenang Rabu, 26 Juli 2023</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">    h. Pengumuman Pemenang Kamis, 27 Juli 2023</span><br></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\">  i. Penunjukan Pemenang Jum’at, 28 Juli 2023 4. Pendaftaran dan pengambilan Dokumen Kontes dapat diwakilkan dengan membawa surat tugas dari Direktur Utama/Pimpinan perusahaan dan kartu pengenal.</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">5. Seseorang dilarang mewakili lebih dari 1 (satu) perusahaan dalam mendaftar dan mengambil Dokumen Kontes.</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">6. Dokumen Pemilihan dapat diambil dalam bentuk cetakan.</span><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">     Demikian disampaikan untuk menjadi perhatian.</span></p><p style=\"text-align: justify; \"><span style=\"font-size: 1rem;\">Surat Pengumuman dapat di unduh pada link berikut ini atau pada menu PPID</span><br></p><p><a href=\"https://bit.ly/BeautyContestParkir\" target=\"_blank\">https://bit.ly/BeautyContestParkir</a><br><br></p>', 'Publish', 'Berita', '', NULL, '', 460, '2023-07-13 14:57:43', '2023-07-13 14:57:00', '2023-09-19 19:03:46'),
(44, 5, 6, 'pengumuman-pemenang-mitra-pengelola-parkir-rsud-bayu-asih-tahun-2023', 'PENGUMUMAN PEMENANG MITRA PENGELOLA PARKIR   RSUD BAYU ASIH TAHUN 2023', 'Penetapan Pemenang Pelaksanaan Pemilihan Mitra Pengelolaan Parkir RSUD Bayu Asih Kabupaten Purwakarta', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:7.6pt;text-align:justify;text-indent:-.5pt;line-height:111%\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:111%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">Berdasarkan Berita Acara Penetapan Pemenang\r\nPelaksanaan Pemilihan Mitra Pengelolaan Parkir RSUD Bayu Asih Kabupaten\r\nPurwakarta Nomor : 07/PP/RSUD/BA-PP/VII/2023 tanggal 26 Juli 2023 dengan ini\r\nTim Pemilihan Mitra Pengelolaan Parkir mengumumkan Pemenang Pemilihan Mitra\r\nPengelolaan Parkir RSUD Bayu Asih adalah sebagai berikut : </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">&nbsp;</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.75pt;line-height:111%;tab-stops:center 114.8pt 217.0pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:111%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">Nama Perusahaan&nbsp; : PT. SENTRYPARK UTAMA INDONESIA </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.75pt;line-height:111%;tab-stops:center 114.8pt 180.9pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:111%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">NPWP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 80.103.878.7-432.000&nbsp; </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.75pt;line-height:111%;tab-stops:center 114.8pt 282.9pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:111%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">Alamat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Graha Hera Kota Bekasi Jl. KH. Noer Ali Kav\r\n8 Rt.012/Rw.011&nbsp;</span><span style=\"font-size: 12pt; text-align: center; text-indent: -0.5pt;\">Jaka Sampurna\r\nBekasi Barat Kota Bekasi – Jawa Barat</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:.25pt;margin-left:29.6pt;text-align:center;text-indent:-.5pt;\r\nline-height:104%\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:4.95pt;\r\nmargin-left:127.35pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;\r\nline-height:107%;mso-ascii-font-family:Calibri;mso-fareast-font-family:Calibri;\r\nmso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri\">&nbsp;</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:6.4pt;\r\nmargin-left:-.25pt;text-align:justify;text-indent:-.5pt;line-height:111%\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:111%;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:Calibri;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri\">Untuk proses selanjutnya pihak Panitia Pemilihan\r\nPengelolaan Parkir RSUD Bayu Asih menyerahkan kepada Pimpinan RSUD Bayu Asih. </span><o:p></o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;\r\nfont-family:\" calibri\",sans-serif;mso-fareast-font-family:calibri;mso-ansi-language:=\"\" en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Demikian disampaikan\r\nuntuk diketahui.</span></p><p><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;\r\nfont-family:\" calibri\",sans-serif;mso-fareast-font-family:calibri;mso-ansi-language:=\"\" en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\"><br></span><span style=\"font-size: 12pt; text-align: center; text-indent: -0.5pt;\">KETUA PANITIA</span></p><p><span style=\"font-size: 12pt; text-align: justify; text-indent: -0.5pt;\">PEMILIHAN PENGELOLAAN PARKIR</span></p><p><span style=\"font-size: 12pt; text-align: justify; text-indent: -0.5pt;\">RSUD BAYU ASIH KABUPATEN PURWAKARTA&nbsp;</span></p><p><span style=\"font-size: 12pt; text-align: justify; text-indent: -0.5pt;\"><br></span></p><p><span style=\"font-size: 12pt; text-align: justify; text-indent: -0.5pt;\"><br></span><span style=\"text-indent: -0.5pt; font-size: 1rem;\">Unduh Surat Pengumuman Pemenang </span><a href=\"https://drive.google.com/file/d/10OcsftvUBaZmdF9Xk2mnudycC932cAQ2/view?usp=drive_link\" target=\"_blank\" style=\"text-indent: -0.5pt; font-size: 1rem; background-color: rgb(255, 255, 255);\">Disini</a></p><div style=\"text-align: center; text-indent: -0.666667px;\"><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:204.4pt;text-align:justify;text-indent:-.5pt;line-height:111%\"><o:p></o:p></p></div><p><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;\r\nfont-family:\" calibri\",sans-serif;mso-fareast-font-family:calibri;mso-ansi-language:=\"\" en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">\r\n\r\n\r\n\r\n</span><br></p>', 'Publish', 'Berita', '', NULL, '', 357, '2023-07-27 22:00:22', '2023-07-27 21:22:00', '2023-09-18 12:51:31'),
(45, 5, 6, 'evaluasi-zona-integritas', 'Evaluasi Zona Integritas', 'Evaluasi Zona Integritas RSUD Bayu Asih', '<p></p><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Senin, 21 Agustus 2023.</span></div><div style=\"text-align: justify;\"><img src=\"https://rsudbayuasih.purwakartakab.go.id/assets/upload/image/WhatsApp-Image-2023-08-21-at-15.11.52.jpeg\" style=\"width: 25%; float: left;\" class=\"note-float-left\"><span style=\"font-size: 1rem;\">RSUD Bayu Asih melaksanakan Evaluasi Zona Integritas oleh Kementerian Pemberdayaan Aparatur Negara Reformasi Birokrasi (PAN-RB) yang dilakukan secara online melalui zoom meet. Plt. Direktur RSUD Bayu Asih Purwakarta&nbsp; dr. Deni Darmawan, MARS sebagai pimpinan rumah sakit mendapat beberapa pertanyaan dari perwakilan Kemen PAN RB seputar pelayanan yang dilakukan di RSUD Bayu Asih yang berkaitan dengan Zona Integritas untuk menuju Wilayah Bebas Korupsi dan Wilayah Birokrasi Bersih Melayani.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"> </span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Sebelum mendapat pertanyaan Plt. Direktur diberikan waktu selama 15 menit untuk pemaparan profil rumah sakit yang berkaitan dengan inovasi pelayanan. Evaluasi ini juga dihadiri para pejabat struktural dilingkungan RSUD Bayu Asih Purwakarta, perwakilan dari Kantor Inspektorat Kabupaten Purwakarta.</span></div><div style=\"text-align: justify;\"><img src=\"https://rsudbayuasih.purwakartakab.go.id/assets/upload/image/WhatsApp-Image-2023-08-24-at-09.46.35.jpeg\" style=\"width: 25%;\"><span style=\"font-size: 1rem;\"><br></span></div><p></p>', 'Publish', 'Berita', 'Zona Integritas', 'WhatsApp-Image-2023-08-24-at-09.46.34.jpeg', '', 294, '2023-08-28 09:11:26', '2023-08-28 09:01:00', '2023-09-20 15:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `isi_testimoni`, `gambar`, `status_client`, `tempat_lahir`, `tanggal_lahir`, `tanggal_post`, `tanggal`) VALUES
(2, 4, 'Perorangan', 'Milla Marliya', 'Purwakarta', 'Purwakarta', '', '', '', 'Tempatnya bersih, nyaman, petugasnya ramah-ramah, dekat parkiran banyak pohon rindang adem sambil jajan cuangki, tahu dan ngopi, jenguknya gantian ..........', 'Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png', 'Publish', 'JAKARTA', '1962-01-02', '0000-00-00 00:00:00', '2022-11-26 19:43:33'),
(3, 4, 'Perorangan', 'Raihan Arya', 'Purwakarta', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', '', '', 'Tempatnya lumayan bersih dan terawat, Perawatnya baik-baik dan yang pasti ini adalah rumah sakit milik pemerintah purwakarta yang terbesar dan tertua di purwakarta...', '5a1d2cd419e0c365574115.png', 'Publish', 'Depok', '2020-03-02', '0000-00-00 00:00:00', '2022-11-26 19:43:24'),
(5, 4, 'Perorangan', 'Muhammad Fathurohim', 'Purwakarta', 'Purwakarta', '+6285715100485', '', '', 'Rumah sakitnya sekarang sudah bagus, tidak kalah sama swasta, pelayanan pendaftaran dan informasi sangat memadai, tempat parkir luas dan rindang....', 'b7630a2a75006840b351bde15efe52be.jpg', 'Publish', 'Blora', '1983-02-22', '2021-04-24 07:34:12', '2022-11-26 19:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int NOT NULL,
  `id_kategori_download` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL,
  `id_kategori_galeri` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(5, 5, 5, 'Layanan Unggulan Bedah Saraf', 'Homepage', '', 'BEDAH-SARAF.jpg', 'www.rsudbayuasih.org', NULL, 'Tidak', NULL, '2023-05-24 02:44:33'),
(7, 5, 5, '-', 'Homepage', '', 'home-1.jpg', '', NULL, 'Tidak', NULL, '2023-05-24 02:37:05'),
(8, 4, 5, 'Endoskopi', 'Galeri', '', 'Endoskopi.jpeg', '', NULL, 'Tidak', NULL, '2022-11-18 02:42:59'),
(9, 5, 5, 'Instalasi Gawat Darurat', 'Galeri', '', 'IMG_9276.jpg', '', NULL, 'Ya', NULL, '2022-11-18 03:17:02'),
(10, 5, 5, 'Ruang Rawat Inap Edelweis', 'Galeri', '', 'IMG_0099_1_1.jpg', '', NULL, 'Ya', NULL, '2022-11-18 03:21:16'),
(12, 6, 5, 'Gempungan', 'Galeri', '', '_DP_2714.JPG', '', NULL, 'Tidak', '2021-04-24 02:45:16', '2022-11-22 01:34:35'),
(13, 6, 5, 'Gempungan ', 'Galeri', '', '_DP_3010.JPG', '', NULL, 'Tidak', '2021-04-24 08:13:13', '2022-11-22 01:34:55'),
(14, 6, 5, 'Pelatihan Simulasi', 'Galeri', '', '_D2A1622.JPG', '', NULL, 'Ya', '2022-11-22 09:07:45', '2022-11-22 02:07:45'),
(15, 6, 5, 'Pelatihan Simulasi', 'Galeri', '', '_D2A1861.JPG', '', NULL, 'Ya', '2022-11-22 09:08:02', '2022-11-22 02:08:02'),
(16, 6, 5, 'Pelatihan Simulasi', 'Galeri', '', '_D2A1932.JPG', '', NULL, 'Ya', '2022-11-22 09:08:34', '2022-11-22 02:08:34'),
(17, 6, 5, 'Pelatihan Simulasi', 'Galeri', '', '_D2A2009.JPG', '', NULL, 'Ya', '2022-11-22 09:08:44', '2022-11-22 02:08:44'),
(18, 6, 5, 'Pelatihan Simulasi', 'Galeri', '', '_D2A2061.JPG', '', NULL, 'Ya', '2022-11-22 09:08:54', '2022-11-22 02:08:54'),
(19, 4, 5, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Galeri', '', 'WhatsApp-Image-2022-12-07-at-16.12.55.jpeg', '', NULL, 'Tidak', '2022-12-08 10:43:08', '2022-12-08 03:43:08'),
(20, 5, 4, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Homepage', '', 'WhatsApp-Image-2022-12-07-at-16.13.00.jpeg', '', NULL, 'Tidak', '2022-12-08 10:43:42', '2022-12-09 03:30:18'),
(21, 4, 5, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Galeri', '', 'WhatsApp-Image-2022-12-07-at-16.12.59.jpeg', '', NULL, 'Tidak', '2022-12-08 10:43:58', '2022-12-08 03:43:58'),
(22, 4, 5, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Galeri', '', 'WhatsApp-Image-2022-12-07-at-16.12.59-(1).jpeg', '', NULL, 'Tidak', '2022-12-08 10:44:19', '2022-12-08 03:44:19'),
(23, 4, 5, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Galeri', '', 'WhatsApp-Image-2022-12-07-at-16.12.58.jpeg', '', NULL, 'Tidak', '2022-12-08 10:44:35', '2022-12-08 03:44:35'),
(24, 4, 5, 'Peresmian Balai Rehabilitasi Napza Adhyaksa', 'Galeri', '', '_DP_6552.jpg', '', NULL, 'Tidak', '2022-12-08 11:05:54', '2022-12-08 04:05:54'),
(25, 4, 4, 'Jadwal Dokter', 'Galeri', '<p>Jadwal Praktik Dokter</p>', 'Dokter.jpeg', '', NULL, 'Ya', '2022-12-09 02:49:19', '2022-12-08 19:49:19'),
(26, 4, 5, 'Jenis Pelayanan', 'Galeri', '', 'Final-Leaflet-Revisi-hal-1.jpg', '', NULL, 'Tidak', '2022-12-09 12:58:34', '2022-12-09 05:58:34'),
(27, 4, 5, 'Jenis Pelayanan', 'Galeri', '', 'Final-Leaflet-Revisi.jpg', '', NULL, 'Tidak', '2022-12-09 12:58:51', '2022-12-09 05:58:51'),
(29, 4, 4, 'Jadwal Dokter', 'Galeri', '<p>Jadwal Dokter</p>', 'SS_110.png', '', NULL, 'Tidak', '2022-12-10 03:00:31', '2022-12-09 20:00:31'),
(30, 4, 4, 'INM-1', 'Galeri', '', '1.png', '', NULL, 'Tidak', '2022-12-10 03:09:43', '2022-12-09 20:09:43'),
(31, 4, 4, 'INM-2', 'Galeri', '', '2.png', '', NULL, 'Tidak', '2022-12-10 03:10:02', '2022-12-09 20:10:02'),
(32, 4, 4, 'INM-3', 'Galeri', '', '3.png', '', NULL, 'Tidak', '2022-12-10 03:10:21', '2022-12-09 20:10:26'),
(33, 4, 4, 'INM-4', 'Galeri', '', '4.png', '', NULL, 'Tidak', '2022-12-10 03:10:41', '2022-12-09 20:10:41'),
(34, 4, 4, 'INM-5', 'Galeri', '', '5.png', '', NULL, 'Tidak', '2022-12-10 03:11:06', '2022-12-09 20:11:06'),
(35, 4, 4, 'INM-6', 'Galeri', '', '6.png', '', NULL, 'Tidak', '2022-12-10 03:11:19', '2022-12-09 20:11:19'),
(36, 4, 4, 'INM-7', 'Galeri', '', '7.png', '', NULL, 'Tidak', '2022-12-10 03:11:32', '2022-12-09 20:11:32'),
(37, 4, 4, 'INM-8', 'Galeri', '', '8.png', '', NULL, 'Tidak', '2022-12-10 03:11:46', '2022-12-09 20:11:46'),
(38, 4, 4, 'INM-9', 'Galeri', '', '9.png', '', NULL, 'Tidak', '2022-12-10 03:12:01', '2022-12-09 20:12:01'),
(39, 4, 4, 'INM-10', 'Galeri', '', '10.png', '', NULL, 'Tidak', '2022-12-10 03:12:16', '2022-12-09 20:12:16'),
(40, 4, 4, 'INM-11', 'Galeri', '', '11.png', '', NULL, 'Tidak', '2022-12-10 03:12:30', '2022-12-09 20:12:30'),
(41, 4, 4, 'INM-12', 'Galeri', '', '12.png', '', NULL, 'Tidak', '2022-12-10 03:12:55', '2022-12-09 20:12:55'),
(42, 4, 4, 'INM-13', 'Galeri', '', '13.png', '', NULL, 'Tidak', '2022-12-10 03:13:06', '2022-12-09 20:13:06'),
(44, 6, 4, 'Jadwal Dokter', 'Galeri', '<p>jadwal dotker</p>', 'SS_112.png', '', NULL, 'Ya', '2022-12-10 08:32:17', '2022-12-10 01:32:17'),
(45, 4, 5, 'Sosialisasi Pelayanan Rumah Sakit', 'Galeri', '', '_DP_7074.JPG', '', NULL, 'Tidak', '2022-12-15 14:01:44', '2022-12-15 07:01:44'),
(46, 4, 5, 'Sosialisasi Pelayanan Rumah Sakit', 'Galeri', '', '_DP_7050.JPG', '', NULL, 'Tidak', '2022-12-15 14:02:11', '2022-12-15 07:02:11'),
(47, 4, 5, 'Peresmian Paviliun Dahlia', 'Galeri', '', '_DP_8177.JPG', '', NULL, 'Tidak', '2023-01-03 15:08:40', '2023-01-03 08:08:40'),
(48, 5, 5, 'Peresmian Paviliun Dahlia', 'Homepage', '', '_DP_8199_2.JPG', '', NULL, 'Tidak', '2023-01-03 15:08:58', '2023-01-03 08:19:15'),
(49, 4, 4, 'Slide_1', 'Galeri', '', 'Slide1.JPG', '', NULL, 'Ya', '2023-01-15 06:10:01', '2023-01-14 23:14:12'),
(50, 4, 4, 'Slide_2', 'Galeri', '', 'Slide2.JPG', '', NULL, 'Ya', '2023-01-15 06:10:28', '2023-01-14 23:14:03'),
(51, 4, 4, 'Slide_3', 'Galeri', '', 'Slide3.JPG', '', NULL, 'Ya', '2023-01-15 06:10:48', '2023-01-14 23:13:56'),
(52, 4, 4, 'Slide_4', 'Galeri', '', 'Slide4.JPG', '', NULL, 'Ya', '2023-01-15 06:14:28', '2023-01-14 23:14:28'),
(53, 4, 4, 'Slide_5', 'Galeri', '', 'Slide5.JPG', '', NULL, 'Ya', '2023-01-15 06:14:45', '2023-01-14 23:14:45'),
(54, 4, 4, 'Slide_6', 'Galeri', '', 'Slide6.JPG', '', NULL, 'Ya', '2023-01-15 06:15:10', '2023-01-14 23:15:10'),
(55, 4, 4, 'Slide_7', 'Galeri', '', 'Slide7.JPG', '', NULL, 'Ya', '2023-01-15 06:15:22', '2023-01-14 23:15:37'),
(56, 4, 4, 'Slide_8', 'Galeri', '', 'Slide8.JPG', '', NULL, 'Ya', '2023-01-15 06:15:50', '2023-01-14 23:15:50'),
(57, 4, 4, 'Slide_9', 'Galeri', '', 'Slide9.JPG', '', NULL, 'Ya', '2023-01-15 06:16:06', '2023-01-14 23:16:06'),
(58, 4, 4, 'Slide_10', 'Galeri', '', 'Slide10.JPG', '', NULL, 'Ya', '2023-01-15 06:16:51', '2023-01-14 23:16:51'),
(59, 4, 4, 'Slide_11', 'Galeri', '', 'Slide11.JPG', '', NULL, 'Ya', '2023-01-15 06:17:34', '2023-01-14 23:17:34'),
(60, 4, 4, 'Slide_12', 'Galeri', '', 'Slide12.JPG', '', NULL, 'Ya', '2023-01-15 06:17:56', '2023-01-14 23:17:56'),
(61, 4, 4, 'Slide_13', 'Galeri', '', 'Slide13.JPG', '', NULL, 'Ya', '2023-01-15 06:18:10', '2023-01-14 23:18:10'),
(62, 4, 4, 'Slide_14', 'Galeri', '', 'Slide14.JPG', '', NULL, 'Ya', '2023-01-15 06:18:27', '2023-01-14 23:18:27'),
(63, 4, 4, 'Slide_15', 'Galeri', '', 'Slide15.JPG', '', NULL, 'Ya', '2023-01-15 06:18:39', '2023-01-14 23:18:39'),
(64, 5, 5, 'Zona Integritas Menuju WBK dan WBBM', 'Homepage', '', 'WhatsApp-Image-2023-04-03-at-09.57.09.jpeg', '', NULL, 'Tidak', '2023-04-03 10:20:11', '2023-04-03 03:20:31'),
(65, 4, 5, 'Penyerahan Sertifikat Akreditasi RS', 'Galeri', '', 'WhatsApp-Image-2023-04-05-at-13.06.13.jpeg', '', NULL, 'Tidak', '2023-04-05 13:42:14', '2023-04-05 06:42:14'),
(66, 4, 5, 'ZI', 'Galeri', '', 'WhatsApp-Image-2023-05-25-at-10.47.09-(2).jpeg', '', NULL, 'Tidak', '2023-05-25 11:22:47', '2023-05-25 04:22:47'),
(67, 4, 5, 'Evaluasi Zona Integritas', 'Galeri', '<p>Evaluasi Zona Integritas RSUD Bayu Asih oleh Kementerian PAN-RB</p>', 'WhatsApp-Image-2023-08-21-at-15.11.52.jpeg', '', NULL, 'Tidak', '2023-08-24 12:45:13', '2023-08-28 01:59:19'),
(68, 4, 5, 'Evaluasi Zona Integritas', 'Galeri', '', 'WhatsApp-Image-2023-08-24-at-09.46.35.jpeg', '', NULL, 'Tidak', '2023-08-28 09:00:23', '2023-08-28 02:00:23'),
(69, 4, 5, 'Evaluasi Zona Integritas', 'Galeri', '', 'WhatsApp-Image-2023-08-24-at-09.46.34.jpeg', '', NULL, 'Tidak', '2023-08-28 09:00:45', '2023-08-28 02:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 4, 'profil', 'Profil', 1, 0, '2022-11-05 23:35:13'),
(5, 4, 'artikel-kesehatan', 'Artikel Kesehatan', 2, 342, '2023-09-18 09:10:48'),
(6, 4, 'warta-bayu-asih', 'Warta Bayu Asih', 3, 870, '2023-09-20 14:17:22'),
(7, 4, 'pmkp', 'PMKP', 4, 82, '2023-05-09 18:46:37'),
(8, 4, 'jadwal-dokter', 'Jadwal Dokter', 5, 39, '2023-05-27 16:11:01'),
(9, 4, 'tarif-pelayanan', 'Tarif Pelayanan', 6, 16, '2023-01-06 09:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 4, 'setiap-saat', 'Setiap Saat', 2, 0, '2022-12-07 02:52:24'),
(2, 4, 'berkala', 'Berkala', 1, 0, '2022-12-07 02:52:11'),
(4, 4, 'serta-merta', 'Serta Merta', 3, 0, '2022-12-07 02:52:47'),
(5, 4, 'dikecualikan', 'Dikecualikan', 4, 0, '2022-12-07 02:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 00:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 00:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 00:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 4, 'pejabat-struktural', 'Pejabat Struktural', 1, 0, '2022-12-06 16:13:45'),
(2, 4, 'spesialis', 'Spesialis', 2, 0, '2022-12-06 19:23:41'),
(3, 4, 'dokter-umum', 'Dokter Umum', 3, 0, '2022-12-06 16:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `id_user` int NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text,
  `deskripsi` text,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int NOT NULL,
  `smtp_timeout` int NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 5, 'RSUD Bayu Asih', 'RSBA', 'Official Website RSUD Bayu Asih - Jl. Veteran No. 39 Purwakarta - Registrasi Via WA : 0812-8828-8858', '<p style=\"text-align: justify;\"><strong>RSUD Bayu Asih</strong> merupakan rumah sakit <strong>tertua</strong>di wilayah <strong>Purwakarta, Karawang, Bekasi dan Subang</strong> dibangun untuk memenuhi kebutuhan warga masyarakat Purwakarta dan sekitarnya. Diresmikan tanggal <strong>18 Oktober 1930 </strong>oleh <strong>G</strong><em><strong>ubernur Jenderal ACD de Graeff</strong>, <strong>Pastoor Van den Brug</strong>, <strong>dr. Dake</strong> </em>dan<em> <strong>dr. Bosman</strong></em>.</p>\r\n<p style=\"text-align: justify;\">Berdiri diatas tanah seluas 5 (lima) hektar dan luas bangunan 5000 m2, memiliki komponen pelayanan yang sangat mendasar, yaitu: rawat jalan, rawat inap yang terdiri dari 7 (Tujuh) bangsal (belum terbagi menjadi spesialistik), bengkel, apotik, sekolah juru kesehatan dan asrama.</p>\r\n<p style=\"text-align: justify;\">Merupakan sebuah rumah sakit yang sangat dibanggakan dan dibuat oleh <strong>Nederlandsch Zendings Vereeniging</strong> untuk Pemerintah (Hindia Belanda), diberi nama : <strong>&ldquo;BAJOE ASIH&ldquo;</strong> yang mempunyai arti : &ldquo;Pemeliharaan didalam kekuatan derma pengasihan &ldquo;. RSUD Bayu Asih berlokasi ditengah kota Purwakarta, sehingga mempunyai aksesibiliti mudah dijangkau dari segala arah. RSUD Bayu Asih pada awalnya dikelola oleh <strong>Yayasan Gereja Kristen Pasundan (GKP)</strong>, kemudian sejak <strong>tahun 1965</strong> dikelola oleh <strong>Pemerintah Daerah Kabupaten Purwakarta</strong>.</p>', 'Merupakan rumah sakit umum satu-satunya milik Pemerintah Daerah Kabupaten Purwakarta\r\n', 'Jl. Veteran No. 39 Purwakarta - Jawa Barat 41117', 'rsud.bayuasih@gmail.com', 'hukmas.bayuasih@gmail.com', '<p>Jl. Veteran No. 39 <span style=\"font-family: \"Source Sans Pro\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; font-size: 1rem;\">Purwakarta</span></p>', '0264 - 200100', '0811-1000-331', 'a.jpg', 'Logo RSBA.png', 'RSUD Bayu Asih Purwakarta adalah satu-satunya rumah sakit umum milik Pemerintah Daerah Kabupaten Purwakarta Jawa Barat\r\n', 'rumah sakit, bayuasih, purwakarta', 'https://www.facebook.com/rsudbayuasih', 'http://twitter.com/RSBA_Pwk', 'https://www.instagram.com/rsba_pwk', 'https://www.youtube.com/channel/UCBg1m3LIIKdb4l9v9DfS9mw', 'RSUD Bayu Asih', 'RSUD Bayu Asih', 'RSUD Bayu Asih', 'RSUD Bayu Asih', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15855.438396490008!2d107.4436587!3d-6.5394085!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x31f255379002b926!2sRSUD%20Bayu%20Asih%20Purwakarta!5e0!3m2!1sid!2sid!4v1667684898651!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2023-09-20 11:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `kontak` int NOT NULL,
  `message` text NOT NULL,
  `no_rekam_medis` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `name`, `no_hp`, `kontak`, `message`, `no_rekam_medis`, `nama_pasien`) VALUES
(1, 'Urfann', '08123', 1, 'klj;j', '132123', 'jeni'),
(2, 'jeni', '08123', 1, 'tset', '132123', 'jeni'),
(3, 'Urfann', '08123', 1, 'pesan ', '132123', 'jeni'),
(4, 'Ratna Ningsih ', '085798025427', 1, 'saya mau mendaftar ke dokter Spesialis kok pendaftaran tutup jam 12 ', '', ''),
(5, 'Ratna Ningsih ', '085798025427', 1, 'saya mau mendaftar ke dokter Spesialis kok pendaftaran tutup jam 12 ', '', ''),
(6, 'Muhammad Yusup', '083822276001', 1, 'Jam 02 pagi hari ini saya antar anak saya yang bengkak di bagian bokong, tetapi pihak IGD menolak, kondisi anak sudah sangat kesakitan, saya mohon untuk diobati sekedar pereda rasa nyeri, tetapi pihak IGD tetap tidak mau melayani. \r\nSaya sangat kecewa, dimana rasa perikemanusian pihak RS. Bayu Asih? Tolong catat yang jaga di IGD, bagaimana jika anak yang sakit adalah anak Anda sendiri sedang anda seperti saya orang biasa yang sangat mengharapkan bantuan karena bukan seorang tenaga medis.\r\n', '-', '-'),
(7, 'Maya sulismayanti', '082123998389', 1, 'Untuk management RS Bayu asih , kami mohon sekali nomor antrian poli jiwa khususnya atau poli lain mohon untuk tidak dibatasi , atau jadwal antrian kontrol ulang diatur di suster yg menangani poli jiwa khususnya , agar tidak ada antrian yg tidak kebagian ,... Kendala kami pasien yg tidak dapat daftar online , antri di loket tidak dapat hari ini besok lagi tidak dapat antri besoknya lagi , kendala waktu , tenaga dan biaya datang ke antrian RS ', '', ''),
(8, 'Maya sulismayanti', '082123998389', 1, 'Untuk management RS Bayu asih , kami mohon sekali nomor antrian poli jiwa khususnya atau poli lain mohon untuk tidak dibatasi , atau jadwal antrian kontrol ulang diatur di suster yg menangani poli jiwa khususnya , agar tidak ada antrian yg tidak kebagian ,... Kendala kami pasien yg tidak dapat daftar online , antri di loket tidak dapat hari ini besok lagi tidak dapat antri besoknya lagi , kendala waktu , tenaga dan biaya datang ke antrian RS ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_kategori_staff` int DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urutan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `nama`, `alamat`, `telepon`, `website`, `email`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `tempat_lahir`, `tanggal_lahir`, `tanggal`, `urutan`) VALUES
(9, 4, 2, 'dr. Delvi Naibaho, Sp.PD., FINASIM', '', '', '', '', 'Penyakit Dalam', 'Spesialis', 'dr-Delvi.JPG', 'Publish', '', '1970-01-01', '2022-12-06 16:19:17', 1),
(10, 5, 2, 'dr. Joko Anom Suryawan, Sp.U', '', '', '', '', 'Urologi', 'Dokter Spesialis', '_DP_6009.jpg', 'Publish', '', '1970-01-01', '2022-12-08 06:35:33', 2),
(11, 5, 2, 'dr. Murti Astuti, Sp.S', '', '', '', '', 'Syaraf', '', 'dr-Murti.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:09:25', 3),
(12, 5, 2, 'dr. Susilo Admojo, Sp.PD., FINASIM', '', '', '', '', 'Penyakit Dalam', '', 'dr-Susilo.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:15:07', 4),
(14, 4, 2, 'dr. Iman Fathulah, SpJP', '', '', '', '', 'Jantung', '', 'dr-Iman.png', 'Publish', '', '1970-01-01', '2022-12-06 16:21:08', 5),
(15, 5, 2, 'dr. Sri Siswanti, Sp.KK., M.Sc', '', '', 'www', '', 'Kulit Kelamin', '', 'dr.-Sri-SisWanti.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:00:07', 6),
(16, 4, 2, 'dr. Dedelia Marlia, Sp.A', '', '', 'www', '', 'Anak', '', 'dr-Dedelia.JPG', 'Publish', '', '1970-01-01', '2022-12-06 16:27:35', 7),
(17, 4, 2, 'dr. M. Soedarmanto, Sp.M', '', '', 'www', '', 'Mata', 'Spesialis', 'dr-Soedarmanto.JPG', 'Publish', '', '1970-01-01', '2022-12-06 20:30:55', 8),
(18, 4, 2, 'dr. Virama Indraswari, Sp.KJ', '', '', 'www', '', 'Kesehatan Jiwa', '', 'dr-Virama.JPG', 'Publish', '', '1970-01-01', '2022-12-06 20:33:22', 0),
(19, 4, 2, 'dr. Ayuning Dwi Noorsanti, Sp.M', '', '', 'www', '', 'Mata', '', 'dr-ayuning-edit.jpg', 'Publish', '', '1970-01-01', '2022-12-06 20:33:06', 0),
(20, 5, 2, 'dr. Siti Harniati, Sp.AN-KIC', '', '', 'www', '', 'Anestesi Konsultan ICU', '', 'dr-Siti-Harniati-white.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:09:06', 0),
(21, 5, 2, 'drg. Dian Maifara Putri, Sp.BM', '', '', 'www', '', 'Bedah Mulut', '', 'drg-Dian-Meifara.jpg', 'Publish', '', '1970-01-01', '2022-12-12 03:57:18', 0),
(22, 4, 2, 'dr. Sella Zenita Sari, Sp. OG', '', '', 'www.rsudbayuasih.org', '', 'Kebidanan dan Kandungan', '', 'dr-Sella.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:31:07', 0),
(23, 5, 2, 'dr. Shinta Rachma Yoeda, Sp. PA', '', '', 'www.rsudbayuasih.org', '', 'Patologi Anatomi', '', 'dr-Shinta.jpg', 'Publish', '', '1970-01-01', '2022-12-08 03:34:29', 0),
(24, 5, 2, 'dr. Rosmeri Handayani, M.Sc.Sp.PK ', '', '', 'www.rsudbayuasih.org', '', 'Patologi Klinik', '', 'dr-Rosmeri.jpg', 'Publish', '', '1970-01-01', '2022-12-08 03:35:17', 0),
(26, 5, 2, 'dr. Audhiaz Marthsyal Triputra, Sp.An ', '', '', 'www.rsudbayuasih.org', '', 'Anestesi', '', 'dr-Audhiaz.jpg', 'Publish', '', '1970-01-01', '2022-12-08 03:37:11', 0),
(28, 4, 2, 'dr. Agam Mayzulfi,Sp.B.', '', '', 'www.rsudbayuasih.org', '', 'Bedah', '', 'dr-Agam.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:24:36', 0),
(29, 5, 2, 'dr. H.M. Eka Putra,Sp.OT.,FICS.', '', '', 'www.rsudbayuasih.org', '', 'Orthopedi', '', 'dr-Eka-Putra-Sp-OT.jpg', 'Publish', '', '1970-01-01', '2022-12-12 03:53:23', 0),
(30, 4, 2, 'dr. Huda Toriq, Sp.OG', '', '', 'www.rsudbayuasih.org', '', 'Kebidanan dan Kandungan', '', 'dr-Huda.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:29:49', 0),
(31, 5, 2, 'dr. Paulus Irwan Subagio,Sp.B ', '', '', 'www.rsudbayuasih.org', '', 'Bedah', '', 'dr-Irwan-2.jpg', 'Publish', '', '1970-01-01', '2022-12-12 03:56:25', 0),
(32, 5, 2, 'dr. Gamal Ramadiputra, Sp.OT', '', '', 'www.rsudbayuasih.org', '', 'Bedah Orthopedi', '', 'dr.-Gamal,-Sp.Ot.jpg', 'Publish', '', '1970-01-01', '2022-12-12 03:56:56', 0),
(33, 5, 2, 'dr. Yogi Agustian, Sp.A', '', '', 'www', '', 'Anak', '', 'dr-Yogi.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:07:26', 0),
(34, 5, 2, 'drg. Anindya Grita Hapsari,Sp.KG', '', '', 'www', '', 'Konservasi Gigi', '', 'dr-Anin.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:08:07', 0),
(35, 5, 2, 'dr. Zuhaira Syam, Sp.S', '', '', 'www', '', 'Neurologi', '', 'dr-Zuhaira.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:10:20', 0),
(36, 5, 2, 'dr. Nunun Tri Aryanti, Sp.OK', '', '', 'www', '', 'Okupasi', '', 'dr-Nunun.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:13:58', 0),
(37, 5, 2, 'dr. Evi Fatimah, Sp.JP', '', '', 'www', '', 'Jantung ', '', 'dr-Evi.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:15:15', 0),
(38, 5, 2, 'dr. Dian Herdiansyah, Sp. KFR', '', '', 'www', '', 'Rehabilitasi Medik', '', 'dr-Dian-H.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:40:31', 0),
(39, 4, 2, 'dr. Muhammad Eric Juniarto, Sp. OG', '', '', 'www', '', 'Kebidanan dan Kandungan', '', 'dr-Eric.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:29:32', 0),
(40, 5, 2, 'dr. Dian Ekowati Setiyaningsih, Sp.PD', '', '', 'www', '', 'Penyakit Dalam', '', 'dian-ekowati.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:50:57', 0),
(41, 5, 2, 'dr. Priyo Panji Utomo, SpPD', '', '', 'www', '', 'Penyakit Dalam', '', 'dr-Priyo.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:53:05', 0),
(42, 5, 2, 'dr. Ratri Ariani K, Sp.PK', '', '', 'www', '', 'Patologi Klinik', '', 'dr-Ratri.jpg', 'Publish', '', '1970-01-01', '2022-12-12 04:59:44', 0),
(43, 5, 2, 'dr. Evan Rivana, Sp.P', '', '', 'www', '', 'Paru', '', 'dr-Evan.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:15:36', 0),
(44, 5, 2, 'dr. Tommy Nugrahadi W, Sp.A', '', '', 'www', '', 'Anak', '', 'dr-Tommy.jpg', 'Publish', '', '1970-01-01', '2022-12-12 07:23:10', 0),
(45, 5, 2, 'dr. Andre Dwijaya S., Sp.BS', '', '', 'www', '', 'Bedah Saraf', '', 'dr-Andre.jpg', 'Publish', '', '1970-01-01', '2022-12-13 04:46:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(5, 'MDP', 'akung.dian@gmail.com', 'akung', 'c7fe1b87b498ef447d6c67ae6587a65273c9d2f4', 'Admin', NULL, NULL, NULL, '2022-11-06 01:41:44', '2022-11-08 09:13:54'),
(6, 'Administrator', 'administrator@gmail.com', 'admin', 'c7fe1b87b498ef447d6c67ae6587a65273c9d2f4', 'Admin', NULL, NULL, NULL, '2022-11-06 09:17:58', '2023-09-09 08:50:22'),
(7, 'Fatah Idzhar', 'fatahidzhar.h@gmail.com', 'fatah', '$2y$10$2ijsXStMrLwCq6XmoaXCceVy1lV6ssO7JA6.carZ8hg8vP4wzjRW.', 'User', NULL, NULL, NULL, '2023-10-23 14:27:22', '2023-10-23 15:36:50'),
(9, 'hello update', 'Hello@mail.com', 'helo', 'hello', 'Admin', NULL, NULL, NULL, '2023-10-24 10:04:55', '2023-11-03 12:43:42'),
(10, 'xaxaxa', 'xaxa@mail.com', 'xaxa', '$2y$10$yOBLdtif5q1itcqztyId/u9mBUCo0.xE6x1lojTL6tjIfvxawfGRe', 'User', NULL, NULL, NULL, '2023-11-03 12:44:05', '2023-11-03 05:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `url` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `ip_address` tinyint NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`url`, `username`, `ip_address`, `id_user`) VALUES
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5),
(0, 0, 127, 5);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int NOT NULL,
  `id_user` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_user`, `judul`, `keterangan`, `video`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 'SIMULASI CODE BLUE', 'Simulasi penanganan terhadap korban dengan bantuan hidup dasara yang mengalami henti nafas maupun henti jantung.', 'A4UnHYq0M0I', '0000-00-00 00:00:00', '2022-11-06 05:05:12'),
(2, 1, 'Edukasi 5 Momen  dan 6 Langkah Kebersihan Tangan ', 'Kami sampaikan tata cara kebersihan tangan dengan menggunakan sabun dengan air mengalir dan menggunakan handrub.\r\nYuk simak videonya, perhatikan cara-caranya', 'p08BOSZ3AUw', '0000-00-00 00:00:00', '2022-11-06 05:03:29'),
(3, 1, 'ZONA INTEGRASI RSUD BAYU ASIH', 'ZONA INTEGRASI RSUD BAYU ASIH KABUPATEN PURWAKARTA', 'nR6B7ESF0vg', '0000-00-00 00:00:00', '2022-11-06 05:01:26'),
(4, 0, 'Mars Bayu Asih', 'Lagu MARS RSUD Bayu Asih yang dibawakan oleh Tim Paduan Suara RSUD Bayu Asih pada tahun 2018', 'EBc-vNUvWv0', '0000-00-00 00:00:00', '2022-11-07 01:43:07'),
(5, 0, 'Hymne Bayu Asih', 'Lagu Hymne RSUD Bayu Asih yang dibawakan oleh Tim Paduan Suara RSUD Bayu Asih pada tahun 2018', 'xlKKAUYKvXI', '0000-00-00 00:00:00', '2022-11-07 01:42:55'),
(6, 0, 'Layanan Bedah Saraf', 'Pelayanan Spesialis Bedah Saraf dapat dilayani RSUD Bayu Asih', 'AVF-ChTCJSM', '0000-00-00 00:00:00', '2023-05-25 03:47:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `user_logs_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
