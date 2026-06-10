# PostgreSQL ETL Pipeline & Data Cleaning Framework

Bu proje; büyük veri kümelerinin sisteme dahil edilmeden önce temizlenmesi, format hatalarının giderilmesi ve veri entegrasyonunun sağlanması amacıyla geliştirilmiş bir **ETL (Extract, Transform, Load)** çözümüdür.

---

## 🚀 Proje Öne Çıkanlar

* **Data Extraction:** Gerçek dünya anormalliklerini (bozuk tarih formatları, tutarsız stringler, maskesiz telefon numaraları) simüle eden ham veri katmanının (staging) kurulması.
* **Data Transformation:** PostgreSQL yerleşik fonksiyonları (`REGEXP_REPLACE`, `INITCAP`, `SPLIT_PART`, `TO_DATE`) kullanılarak verilerin standartlaştırılması.
* **Validation & Formatting:** E-posta doğrulama algoritmaları ve metin (string) tabanlı tarihlerin ilişkisel veritabanı standartlarına (DATE) dönüştürülmesi.
* **Data Quality Reporting:** İşlenen verilerin başarı oranlarını, kayıp matrislerini ve anormallik sayılarını gösteren otonom kalite raporlaması.

---

## 📁 Proje Yapısı

| Klasör         | Teknik İçerik                                                                          |
| :------------- | :------------------------------------------------------------------------------------- |
| `sql_scripts/` | Ham veri üretimi, ETL dönüştürme döngüleri ve Raporlama scriptleri                     |
| `screenshots/` | Dönüşüm (Transform) öncesi ve sonrası veritabanı durumunu gösteren operasyon çıktıları |

---

## 🛠 Kurulum ve Devreye Alma

### 1. Kaynak (Ham) Veritabanının İnşası

Sistemi ayağa kaldırmak ve kirli verileri oluşturmak için:

```sql
psql -U postgres -d EtlDB -f sql_scripts/1_extract_mock_data.sql
```

### 2. Dönüştürme ve Yükleme (Transform & Load)

Temizleme algoritmalarının çalıştırılması ve hedef tabloya aktarım:

```sql
psql -U postgres -d EtlDB -f sql_scripts/2_transform_and_load.sql
```

### 3. Veri Kalite Raporu Üretimi

ETL sürecinin başarı yüzdesini ve hatalı kayıt metriklerini incelemek için:

```sql
psql -U postgres -d EtlDB -f sql_scripts/3_data_quality_report.sql
```
