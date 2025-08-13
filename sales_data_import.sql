-- sales_data_import.sql
-- Bu script, satış raporu verilerini içeren iki tablo oluşturur ve bu tabloları örnek verilerle doldurur.

-- Not: Tablo adları Türkçe karakter içermemesi için yeniden düzenlenmiştir.
-- Not: Herhangi bir hata oluşmaması için tabloların varlığı kontrol edilerek silinir.

----------------------------------------------------------------------
-- Birinci Dosya: sales report.xlsx - son_dönem.csv
----------------------------------------------------------------------

-- Tablonun zaten var olması durumunda silinir
DROP TABLE IF EXISTS sales_son_donem;

-- Tablo oluşturma
CREATE TABLE sales_son_donem (
    SiparisID INT PRIMARY KEY,
    MusteriAdi NVARCHAR(255),
    UrunAdi NVARCHAR(255),
    Adet INT,
    Fiyat DECIMAL(10, 2),
    Toplam DECIMAL(10, 2),
    SatisTarihi DATE
);

-- Veri ekleme
INSERT INTO sales_son_donem (SiparisID, MusteriAdi, UrunAdi, Adet, Fiyat, Toplam, SatisTarihi) VALUES
(1, 'Ayşe Yılmaz', 'Bilgisayar', 2, 8500.00, 17000.00, '2024-05-15'),
(2, 'Mehmet Kaya', 'Telefon', 1, 12000.00, 12000.00, '2024-05-16'),
(3, 'Zeynep Öztürk', 'Monitör', 3, 3000.00, 9000.00, '2024-05-17'),
(4, 'Canan Demir', 'Klavye', 5, 500.00, 2500.00, '2024-05-18'),
(5, 'Ahmet Arslan', 'Fare', 4, 300.00, 1200.00, '2024-05-19');

----------------------------------------------------------------------
-- İkinci Dosya: sales report.xlsx - tüm_dönem_hg.csv
----------------------------------------------------------------------

-- Tablonun zaten var olması durumunda silinir
DROP TABLE IF EXISTS sales_tum_donem;

-- Tablo oluşturma
CREATE TABLE sales_tum_donem (
    MusteriAdi NVARCHAR(255),
    ToplamSiparisAdedi INT,
    EnCokAldigiUrun NVARCHAR(255),
    SonSiparisTarihi DATE
);

-- Veri ekleme
INSERT INTO sales_tum_donem (MusteriAdi, ToplamSiparisAdedi, EnCokAldigiUrun, SonSiparisTarihi) VALUES
('Ayşe Yılmaz', 5, 'Bilgisayar', '2024-05-22'),
('Mehmet Kaya', 3, 'Telefon', '2024-05-21'),
('Zeynep Öztürk', 8, 'Monitör', '2024-05-23'),
('Canan Demir', 10, 'Klavye', '2024-05-20'),
('Ahmet Arslan', 7, 'Fare', '2024-05-24');

