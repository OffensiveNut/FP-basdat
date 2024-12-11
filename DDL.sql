CREATE DATABASE final_project
    DEFAULT CHARACTER SET = 'utf8mb4';
USE final_project;

-- Table: Pegawai
CREATE TABLE Pegawai
(
    id_pegawai    int          NOT NULL,
    nama          varchar(150) NOT NULL,
    jenis_kelamin char(1)      NOT NULL,
    no_telp       varchar(15)  NOT NULL,
    alamat        varchar(250) NOT NULL,
    posisi        varchar(30)  NOT NULL,
    CONSTRAINT Pegawai_pk PRIMARY KEY (id_pegawai)
);

-- Table: Pemasok
CREATE TABLE Pemasok
(
    id_pemasok       int          NOT NULL,
    nama             varchar(150) NOT NULL,
    email            varchar(100) NOT NULL,
    alamat           varchar(250) NOT NULL,
    no_telp          varchar(15)  NOT NULL,
    jenis_perusahaan varchar(6)   NOT NULL,
    CONSTRAINT Pemasok_pk PRIMARY KEY (id_pemasok)
);

-- Table: Pemasok_Restock
CREATE TABLE Pemasok_Restock
(
    Pemasok_id_pemasok int NOT NULL,
    Restock_id_restock int NOT NULL,
    CONSTRAINT Pemasok_Restock_pk PRIMARY KEY (Pemasok_id_pemasok, Restock_id_restock)
);

-- Table: Pembeli
CREATE TABLE Pembeli
(
    id_pembeli               int          NOT NULL,
    nama                     varchar(150) NOT NULL,
    email                    varchar(100) NOT NULL,
    alamat                   varchar(250) NOT NULL,
    no_telp                  varchar(15)  NOT NULL,
    jenis_pembeli            varchar(15)  NOT NULL,
    Pengiriman_id_pengiriman int          NOT NULL,
    CONSTRAINT Pembeli_pk PRIMARY KEY (id_pembeli)
);

-- Table: Pengiriman
CREATE TABLE Pengiriman
(
    id_pengiriman      int          NOT NULL,
    tujuan             varchar(150) NOT NULL,
    tanggal_kirim      date         NOT NULL,
    estimasi_sampai    date         NOT NULL,
    tanggal_sampai     date         NULL,
    jasa_pengiriman    varchar(50)  NOT NULL,
    Pegawai_id_pegawai int          NOT NULL,
    CONSTRAINT Pengiriman_pk PRIMARY KEY (id_pengiriman)
);

-- Table: Penjualan
CREATE TABLE Penjualan
(
    id_penjualan       int         NOT NULL,
    harga              int         NOT NULL,
    diskon             int         NULL,
    harga_akhir        int         NOT NULL,
    metode_pembayaran  varchar(30) NOT NULL,
    status_pembayaran  varchar(11) NOT NULL,
    Pegawai_id_pegawai int         NOT NULL,
    Pembeli_id_pembeli int         NOT NULL,
    CONSTRAINT Penjualan_pk PRIMARY KEY (id_penjualan)
);

-- Table: Penjualan_Produk
CREATE TABLE Penjualan_Produk
(
    Penjualan_id_penjualan int NOT NULL,
    Produk_id_produk       int NOT NULL,
    CONSTRAINT Penjualan_Produk_pk PRIMARY KEY (Penjualan_id_penjualan, Produk_id_produk)
);

-- Table: Produk
CREATE TABLE Produk
(
    id_produk    int          NOT NULL,
    nama         varchar(100) NOT NULL,
    harga        int          NOT NULL,
    deskripsi    varchar(250) NOT NULL,
    kategori     varchar(30)  NOT NULL,
    berat        int          NOT NULL,
    Stok_id_stok int          NOT NULL,
    CONSTRAINT Produk_pk PRIMARY KEY (id_produk)
);

-- Table: Produk_Restock
CREATE TABLE Produk_Restock
(
    Produk_id_produk   int NOT NULL,
    Restock_id_restock int NOT NULL,
    CONSTRAINT Produk_Restock_pk PRIMARY KEY (Produk_id_produk, Restock_id_restock)
);

-- Table: Restock
CREATE TABLE Restock
(
    id_restock         int          NOT NULL,
    nama_produk        varchar(150) NOT NULL,
    jumlah             int          NOT NULL,
    tanggal            date         NOT NULL,
    total_harga        int          NOT NULL,
    status_pengiriman  varchar(30)  NOT NULL,
    Pegawai_id_pegawai int          NOT NULL,
    CONSTRAINT Restock_pk PRIMARY KEY (id_restock)
);

-- Table: Stok
CREATE TABLE Stok
(
    id_stok        int         NOT NULL,
    jumlah         int         NOT NULL,
    kondisi        varchar(50) NOT NULL,
    no_rak         int         NOT NULL,
    mudah_terbakar boolean     NOT NULL,
    no_gudang      int         NOT NULL,
    CONSTRAINT Stok_pk PRIMARY KEY (id_stok)
);

-- foreign keys
-- Reference: Pemasok_Restock_Pemasok (table: Pemasok_Restock)
ALTER TABLE Pemasok_Restock
    ADD CONSTRAINT Pemasok_Restock_Pemasok
        FOREIGN KEY Pemasok_Restock_Pemasok (Pemasok_id_pemasok)
            REFERENCES Pemasok (id_pemasok)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Pemasok_Restock_Restock (table: Pemasok_Restock)
ALTER TABLE Pemasok_Restock
    ADD CONSTRAINT Pemasok_Restock_Restock
        FOREIGN KEY Pemasok_Restock_Restock (Restock_id_restock)
            REFERENCES Restock (id_restock)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Pembeli_Pengiriman (table: Pembeli)
ALTER TABLE Pembeli
    ADD CONSTRAINT Pembeli_Pengiriman
        FOREIGN KEY Pembeli_Pengiriman (Pengiriman_id_pengiriman)
            REFERENCES Pengiriman (id_pengiriman)
            ON UPDATE CASCADE;

-- Reference: Pengiriman_Pegawai (table: Pengiriman)
ALTER TABLE Pengiriman
    ADD CONSTRAINT Pengiriman_Pegawai
        FOREIGN KEY Pengiriman_Pegawai (Pegawai_id_pegawai)
            REFERENCES Pegawai (id_pegawai)
            ON UPDATE CASCADE;

-- Reference: Penjualan_Pegawai (table: Penjualan)
ALTER TABLE Penjualan
    ADD CONSTRAINT Penjualan_Pegawai
        FOREIGN KEY Penjualan_Pegawai (Pegawai_id_pegawai)
            REFERENCES Pegawai (id_pegawai)
            ON UPDATE CASCADE;

-- Reference: Penjualan_Produk_Penjualan (table: Penjualan_Produk)
ALTER TABLE Penjualan_Produk
    ADD CONSTRAINT Penjualan_Produk_Penjualan
        FOREIGN KEY Penjualan_Produk_Penjualan (Penjualan_id_penjualan)
            REFERENCES Penjualan (id_penjualan)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Penjualan_Produk_Produk (table: Penjualan_Produk)
ALTER TABLE Penjualan_Produk
    ADD CONSTRAINT Penjualan_Produk_Produk
        FOREIGN KEY Penjualan_Produk_Produk (Produk_id_produk)
            REFERENCES Produk (id_produk)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Produk_Restock_Produk (table: Produk_Restock)
ALTER TABLE Produk_Restock
    ADD CONSTRAINT Produk_Restock_Produk
        FOREIGN KEY Produk_Restock_Produk (Produk_id_produk)
            REFERENCES Produk (id_produk)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Produk_Restock_Restock (table: Produk_Restock)
ALTER TABLE Produk_Restock
    ADD CONSTRAINT Produk_Restock_Restock
        FOREIGN KEY Produk_Restock_Restock (Restock_id_restock)
            REFERENCES Restock (id_restock)
            ON UPDATE CASCADE
            ON DELETE CASCADE;

-- Reference: Produk_Stok (table: Produk)
ALTER TABLE Produk
    ADD CONSTRAINT Produk_Stok
        FOREIGN KEY Produk_Stok (Stok_id_stok)
            REFERENCES Stok (id_stok)
            ON UPDATE CASCADE;

-- Reference: Restock_Pegawai (table: Restock)
ALTER TABLE Restock
    ADD CONSTRAINT Restock_Pegawai
        FOREIGN KEY Restock_Pegawai (Pegawai_id_pegawai)
            REFERENCES Pegawai (id_pegawai)
            ON UPDATE CASCADE;

-- Reference: entity_1_Penjualan (table: Penjualan)
ALTER TABLE Penjualan
    ADD CONSTRAINT entity_1_Penjualan
        FOREIGN KEY entity_1_Penjualan (Pembeli_id_pembeli)
            REFERENCES Pembeli (id_pembeli)
            ON UPDATE CASCADE;

-- End of file.
