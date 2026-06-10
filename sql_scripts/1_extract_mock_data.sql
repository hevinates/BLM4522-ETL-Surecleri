CREATE TABLE HamMusteriVerisi (
    HamID SERIAL PRIMARY KEY,
    AdSoyad VARCHAR(100),
    Telefon VARCHAR(50),
    Email VARCHAR(100),
    KayitTarihi VARCHAR(50)
);

INSERT INTO HamMusteriVerisi (AdSoyad, Telefon, Email, KayitTarihi) VALUES
('ahmet yılmaz', '0555-123-45-67', 'ahmet.y@email.com', '2023/05/12'),
('AYŞE KAYA', '532 987 65 43', 'aysekaya@email', '12-05-2023'),
('Mehmet ', NULL, 'mehmet@email.com', '2023.05.12'),
('   Ali Veli   ', '05441112233', NULL, '12/05/2023'),
('zeynep demir', 'telefon_yok', 'zeynep.eposta.com', '2023-05-12');

CREATE TABLE TemizMusteriVerisi (
    MusteriID SERIAL PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Telefon VARCHAR(15),
    Email VARCHAR(100),
    KayitTarihi DATE
);
