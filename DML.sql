-- Active: 1731156415042@@127.0.0.1@3306@final_project
-- Insert Pegawai
INSERT INTO Pegawai VALUES
(1, 'Budi Santoso', 'L', '081234567890', 'Jl. Mangga 123, Jakarta', 'Manajer Gudang'),
(2, 'Dewi Lestari', 'P', '085678901234', 'Jl. Melati 45, Surabaya', 'Admin Penjualan'),
(3, 'Ahmad Wijaya', 'L', '087890123456', 'Jl. Mawar 67, Bandung', 'Staff Gudang'),
(4, 'Siti Rahayu', 'P', '089012345678', 'Jl. Dahlia 89, Semarang', 'Admin Pengiriman'),
(5, 'Eko Prasetyo', 'L', '082345678901', 'Jl. Anggrek 12, Yogyakarta', 'Staff Pengiriman'),
(6, 'Rina Wati', 'P', '081345678902', 'Jl. Kamboja 34, Malang', 'Staff Penjualan'),
(7, 'Bambang Kurniawan', 'L', '085234567890', 'Jl. Kenanga 56, Solo', 'Staff Gudang'),
(8, 'Maya Indah', 'P', '087123456789', 'Jl. Tulip 78, Surakarta', 'Admin Stok'),
(9, 'Dodi Pratama', 'L', '089234567890', 'Jl. Teratai 90, Medan', 'Staff Pengiriman'),
(10, 'Nina Safitri', 'P', '082123456789', 'Jl. Bougenville 23, Denpasar', 'Staff Penjualan');

-- Insert Pemasok
INSERT INTO Pemasok VALUES
(1, 'PT Indofood Sukses Makmur', 'procurement@indofood.co.id', 'Sudirman Plaza, Indofood Tower Lt. 27, Jakarta', '02157958822', 'PT'),
(2, 'PT Unilever Indonesia', 'supplier@unilever.co.id', 'Grha Unilever, Green Office Park Kav.3, BSD', '02180827000', 'PT'),
(3, 'PT Wings Surya', 'procurement@wings.co.id', 'Jl. Raya Surabaya-Malang KM.43, Pasuruan', '0343656897', 'PT'),
(4, 'PT Mayora Indah', 'supplier@mayora.co.id', 'Gedung Mayora, Jl. Tomang Raya 21-23, Jakarta', '02125508880', 'PT'),
(5, 'PT Garuda Food', 'procurement@garudafood.co.id', 'Wisma GarudaFood, Jakarta', '02129869999', 'PT'),
(6, 'PT Nestle Indonesia', 'supplier@nestle.co.id', 'Perkantoran Hijau Arkadia, Jakarta', '02178836000', 'PT'),
(7, 'PT Siantar Top', 'procurement@siantartop.co.id', 'Jl. Tambak Sawah 21-23, Sidoarjo', '0318667382', 'PT'),
(8, 'PT Orang Tua Group', 'supplier@ot.co.id', 'Jl. Tambak Anakan 27-29, Jakarta', '02162307777', 'PT'),
(9, 'PT ABC President', 'procurement@abc.co.id', 'Wisma ABC, Jakarta', '02128995555', 'PT'),
(10, 'PT Monde Biscuits', 'supplier@monde.co.id', 'Jl. Raya Bekasi KM 28, Bekasi', '02188976543', 'PT');

-- Insert Stok
INSERT INTO Stok VALUES
(1, 1000, 'Baik', 1, false, 1),
(2, 750, 'Baik', 2, false, 1),
(3, 500, 'Baik', 3, true, 2),
(4, 1200, 'Baik', 4, false, 1),
(5, 300, 'Baik', 5, false, 1),
(6, 800, 'Baik', 6, true, 2),
(7, 600, 'Baik', 7, false, 1),
(8, 900, 'Baik', 8, false, 1),
(9, 400, 'Baik', 9, true, 2),
(10, 1500, 'Baik', 10, false, 1);

-- Insert Produk
INSERT INTO Produk VALUES
(1, 'Indomie Goreng', 3000, 'Mie instant goreng original', 'Makanan', 85, 1),
(2, 'Rinso Cair 900ml', 24000, 'Deterjen cair anti noda', 'Pembersih', 900, 2),
(3, 'So Klin Pewangi 800ml', 15000, 'Pewangi pakaian', 'Pembersih', 800, 3),
(4, 'Roma Kelapa 250g', 8000, 'Biskuit kelapa', 'Makanan', 250, 4),
(5, 'Garuda Kacang 250g', 12000, 'Kacang kulit premium', 'Makanan', 250, 5),
(6, 'Milo 1kg', 85000, 'Susu coklat bubuk', 'Minuman', 1000, 6),
(7, 'Fullo Pack 240g', 8500, 'Wafer roll coklat', 'Makanan', 240, 7),
(8, 'Tango 130g', 7000, 'Wafer coklat', 'Makanan', 130, 8),
(9, 'Sirup ABC 525ml', 18000, 'Sirup rasa melon', 'Minuman', 525, 9),
(10, 'Biskuit Monde 150g', 15000, 'Butter cookies', 'Makanan', 150, 10);

-- Insert Pengiriman
INSERT INTO Pengiriman VALUES
(1, 'Jakarta Pusat', '2024-01-01', '2024-01-03', '2024-01-02', 'JNE Express', 4),
(2, 'Surabaya', '2024-01-02', '2024-01-04', '2024-01-04', 'SiCepat REG', 5),
(3, 'Bandung', '2024-01-03', '2024-01-05', '2024-01-05', 'J&T Express', 9),
(4, 'Medan', '2024-01-04', '2024-01-07', NULL, 'ID Express', 4),
(5, 'Makassar', '2024-01-05', '2024-01-08', NULL, 'Ninja Express', 5),
(6, 'Semarang', '2024-01-06', '2024-01-08', '2024-01-07', 'AnterAja', 9),
(7, 'Palembang', '2024-01-07', '2024-01-10', NULL, 'JNE Regular', 4),
(8, 'Yogyakarta', '2024-01-08', '2024-01-10', '2024-01-09', 'SiCepat HALU', 5),
(9, 'Denpasar', '2024-01-09', '2024-01-12', NULL, 'Pos Indonesia', 9),
(10, 'Malang', '2024-01-10', '2024-01-12', '2024-01-11', 'Lion Parcel', 4);

-- Insert Pembeli
INSERT INTO Pembeli VALUES
(1, 'Toko Sejahtera', 'tokosejahtera@gmail.com', 'Jl. Pasar Baru 45, Jakarta', '081234567891', 'Toko', 1),
(2, 'CV Maju Jaya', 'majujaya@gmail.com', 'Jl. Raya Darmo 78, Surabaya', '085678901235', 'CV', 2),
(3, 'Andi Hermawan', 'andi@gmail.com', 'Jl. Asia Afrika 90, Bandung', '087890123457', 'Individual', 3),
(4, 'UD Berkah', 'berkah@gmail.com', 'Jl. Zainul Arifin 34, Medan', '089012345679', 'UD', 4),
(5, 'Minimarket Barokah', 'barokah@gmail.com', 'Jl. Pettarani 67, Makassar', '082345678902', 'Toko', 5),
(6, 'Sri Wahyuni', 'sriwahyuni@gmail.com', 'Jl. Pemuda 89, Semarang', '081345678903', 'Individual', 6),
(7, 'CV Abadi Jaya', 'abadijaya@gmail.com', 'Jl. Sudirman 123, Palembang', '085234567891', 'CV', 7),
(8, 'Toko Makmur', 'tokomakmur@gmail.com', 'Jl. Malioboro 56, Yogyakarta', '087123456790', 'Toko', 8),
(9, 'UD Maju Bersama', 'majubersama@gmail.com', 'Jl. Gajah Mada 78, Denpasar', '089234567891', 'UD', 9),
(10, 'Ahmad Sudrajat', 'ahmad@gmail.com', 'Jl. Ijen 45, Malang', '082123456790', 'Individual', 10);

-- Insert Stok 
INSERT INTO Stok VALUES
(1, 1000, 'Baik', 1, false, 1),
(2, 750, 'Baik', 2, false, 1),
(3, 500, 'Baik', 3, true, 2),
(4, 1200, 'Baik', 4, false, 1),
(5, 300, 'Baik', 5, false, 1),
(6, 800, 'Baik', 6, true, 2),
(7, 600, 'Baik', 7, false, 1),
(8, 900, 'Baik', 8, false, 1),
(9, 400, 'Baik', 9, true, 2),
(10, 1500, 'Baik', 10, false, 1);

-- Insert Produk
INSERT INTO Produk VALUES
(1, 'Indomie Goreng', 3000, 'Mie instant goreng original', 'Makanan', 85, 1),
(2, 'Rinso Cair 900ml', 24000, 'Deterjen cair anti noda', 'Pembersih', 900, 2),
(3, 'So Klin Pewangi 800ml', 15000, 'Pewangi pakaian', 'Pembersih', 800, 3),
(4, 'Roma Kelapa 250g', 8000, 'Biskuit kelapa', 'Makanan', 250, 4),
(5, 'Garuda Kacang 250g', 12000, 'Kacang kulit premium', 'Makanan', 250, 5),
(6, 'Milo 1kg', 85000, 'Susu coklat bubuk', 'Minuman', 1000, 6),
(7, 'Fullo Pack 240g', 8500, 'Wafer roll coklat', 'Makanan', 240, 7),
(8, 'Tango 130g', 7000, 'Wafer coklat', 'Makanan', 130, 8),
(9, 'Sirup ABC 525ml', 18000, 'Sirup rasa melon', 'Minuman', 525, 9),
(10, 'Biskuit Monde 150g', 15000, 'Butter cookies', 'Makanan', 150, 10);

-- Insert Pengiriman
INSERT INTO Pengiriman VALUES
(1, 'Jakarta Pusat', '2024-01-01', '2024-01-03', '2024-01-02', 'JNE Express', 4),
(2, 'Surabaya', '2024-01-02', '2024-01-04', '2024-01-04', 'SiCepat REG', 5),
(3, 'Bandung', '2024-01-03', '2024-01-05', '2024-01-05', 'J&T Express', 9),
(4, 'Medan', '2024-01-04', '2024-01-07', NULL, 'ID Express', 4),
(5, 'Makassar', '2024-01-05', '2024-01-08', NULL, 'Ninja Express', 5),
(6, 'Semarang', '2024-01-06', '2024-01-08', '2024-01-07', 'AnterAja', 9),
(7, 'Palembang', '2024-01-07', '2024-01-10', NULL, 'JNE Regular', 4),
(8, 'Yogyakarta', '2024-01-08', '2024-01-10', '2024-01-09', 'SiCepat HALU', 5),
(9, 'Denpasar', '2024-01-09', '2024-01-12', NULL, 'Pos Indonesia', 9),
(10, 'Malang', '2024-01-10', '2024-01-12', '2024-01-11', 'Lion Parcel', 4);

-- Insert Pembeli
INSERT INTO Pembeli VALUES
(1, 'Toko Sejahtera', 'tokosejahtera@gmail.com', 'Jl. Pasar Baru 45, Jakarta', '081234567891', 'Toko', 1),
(2, 'CV Maju Jaya', 'majujaya@gmail.com', 'Jl. Raya Darmo 78, Surabaya', '085678901235', 'CV', 2),
(3, 'Andi Hermawan', 'andi@gmail.com', 'Jl. Asia Afrika 90, Bandung', '087890123457', 'Individual', 3),
(4, 'UD Berkah', 'berkah@gmail.com', 'Jl. Zainul Arifin 34, Medan', '089012345679', 'UD', 4),
(5, 'Minimarket Barokah', 'barokah@gmail.com', 'Jl. Pettarani 67, Makassar', '082345678902', 'Toko', 5),
(6, 'Sri Wahyuni', 'sriwahyuni@gmail.com', 'Jl. Pemuda 89, Semarang', '081345678903', 'Individual', 6),
(7, 'CV Abadi Jaya', 'abadijaya@gmail.com', 'Jl. Sudirman 123, Palembang', '085234567891', 'CV', 7),
(8, 'Toko Makmur', 'tokomakmur@gmail.com', 'Jl. Malioboro 56, Yogyakarta', '087123456790', 'Toko', 8),
(9, 'UD Maju Bersama', 'majubersama@gmail.com', 'Jl. Gajah Mada 78, Denpasar', '089234567891', 'UD', 9),
(10, 'Ahmad Sudrajat', 'ahmad@gmail.com', 'Jl. Ijen 45, Malang', '082123456790', 'Individual', 10);

-- Insert Penjualan
INSERT INTO Penjualan VALUES
(1, 150000, 0, 150000, 'Transfer Bank', 'Lunas', 2, 1),
(2, 85000, 10000, 75000, 'Cash', 'Lunas', 6, 2),
(3, 200000, 20000, 180000, 'QRIS', 'Lunas', 2, 3),
(4, 95000, 0, 95000, 'Transfer Bank', 'Pending', 6, 4),
(5, 175000, 15000, 160000, 'QRIS', 'Lunas', 2, 5),
(6, 125000, 5000, 120000, 'Cash', 'Lunas', 6, 6),
(7, 250000, 25000, 225000, 'Transfer Bank', 'Pending', 2, 7),
(8, 180000, 10000, 170000, 'QRIS', 'Lunas', 6, 8),
(9, 145000, 0, 145000, 'Cash', 'Lunas', 2, 9),
(10, 165000, 15000, 150000, 'Transfer Bank', 'Pending', 6, 10);

-- Insert Penjualan_Produk
INSERT INTO Penjualan_Produk VALUES
(1, 1), (1, 2), (1, 3),
(2, 6),
(3, 4), (3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 1), (6, 4), (6, 7),
(7, 2), (7, 5), (7, 8),
(8, 3), (8, 6), (8, 9),
(9, 1), (9, 5), (9, 10),
(10, 4), (10, 7), (10, 8);

-- Insert Restock
INSERT INTO Restock VALUES
(1, 'Indomie Goreng', 1000, '2024-01-01', 2500000, 'Diterima', 1),
(2, 'Rinso Cair 900ml', 500, '2024-01-02', 10000000, 'Diterima', 1),
(3, 'So Klin Pewangi 800ml', 300, '2024-01-03', 4000000, 'Diterima', 3),
(4, 'Roma Kelapa 250g', 800, '2024-01-04', 5600000, 'Diterima', 3),
(5, 'Garuda Kacang 250g', 200, '2024-01-05', 2000000, 'Dalam Pengiriman', 7),
(6, 'Milo 1kg', 400, '2024-01-06', 28000000, 'Diterima', 7),
(7, 'Fullo Pack 240g', 600, '2024-01-07', 4200000, 'Dalam Pengiriman', 1),
(8, 'Tango 130g', 700, '2024-01-08', 4200000, 'Diterima', 3),
(9, 'Sirup ABC 525ml', 300, '2024-01-09', 4500000, 'Dalam Pengiriman', 7),
(10, 'Biskuit Monde 150g', 1000, '2024-01-10', 12000000, 'Diterima', 1);

-- Insert Pemasok_Restock
INSERT INTO Pemasok_Restock VALUES
(1, 1), -- Indofood - Indomie
(2, 2), -- Unilever - Rinso
(3, 3), -- Wings - So Klin
(4, 4), -- Mayora - Roma
(5, 5), -- Garuda Food - Kacang
(6, 6), -- Nestle - Milo
(7, 7), -- Siantar Top - Fullo
(8, 8), -- OT - Tango
(9, 9), -- ABC - Sirup
(10, 10); -- Monde - Biskuit

-- Insert Produk_Restock
INSERT INTO Produk_Restock VALUES
(1, 1), -- Indomie - Restock 1
(2, 2), -- Rinso - Restock 2
(3, 3), -- So Klin - Restock 3
(4, 4), -- Roma - Restock 4
(5, 5), -- Garuda - Restock 5
(6, 6), -- Milo - Restock 6
(7, 7), -- Fullo - Restock 7
(8, 8), -- Tango - Restock 8
(9, 9), -- Sirup ABC - Restock 9
(10, 10); -- Monde - Restock 10

