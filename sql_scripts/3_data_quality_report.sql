SELECT 
    COUNT(*) AS Toplam_Islenen_Kayit,
    SUM(CASE WHEN Email = 'Hatali/Eksik Email' THEN 1 ELSE 0 END) AS Hatali_Email_Sayisi,
    SUM(CASE WHEN Telefon = 'Bilinmiyor' THEN 1 ELSE 0 END) AS Eksik_Telefon_Sayisi,
    ROUND((SUM(CASE WHEN Email != 'Hatali/Eksik Email' AND Telefon != 'Bilinmiyor' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS Tam_Basari_Orani_Yuzde
FROM TemizMusteriVerisi;
