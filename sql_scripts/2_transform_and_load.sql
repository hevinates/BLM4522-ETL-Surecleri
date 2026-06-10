INSERT INTO TemizMusteriVerisi (Ad, Soyad, Telefon, Email, KayitTarihi)
SELECT 
    INITCAP(TRIM(SPLIT_PART(TRIM(AdSoyad), ' ', 1))) AS Ad,
    INITCAP(TRIM(SPLIT_PART(TRIM(AdSoyad), ' ', 2))) AS Soyad,
    CASE 
        WHEN Telefon IS NULL OR Telefon = 'telefon_yok' THEN 'Bilinmiyor'
        ELSE REGEXP_REPLACE(Telefon, '\D', '', 'g') 
    END AS Telefon,
    CASE 
        WHEN Email LIKE '%@%.%' THEN LOWER(TRIM(Email))
        ELSE 'Hatali/Eksik Email' 
    END AS Email,
    CASE
        WHEN KayitTarihi SIMILAR TO '[0-9]{2}[-/][0-9]{2}[-/][0-9]{4}' 
             THEN TO_DATE(KayitTarihi, 'DD-MM-YYYY')
        ELSE TO_DATE(REPLACE(REPLACE(KayitTarihi, '.', '-'), '/', '-'), 'YYYY-MM-DD')
    END AS KayitTarihi
FROM HamMusteriVerisi;
