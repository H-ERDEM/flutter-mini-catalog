# 📱 Mini Katalog Uygulaması / Mini Catalog App

Language: [Türkçe](#-türkçe) | [English](#-english)

---

## 🇹🇷 Türkçe

Yazılım stajı kapsamında geliştirilen, ürünlerin JSON verisinden dinamik olarak yüklendiği, modern arayüzlü ve tam fonksiyonel bir Flutter mobil katalog uygulamasıdır.

### 📸 Ekran Görüntüleri

| Ana Sayfa | Ürün Detay | Sepet Sayfası |
| :---: | :---: | :---: |
| ![Ana Sayfa](img/Screenshot_20260620_222856.png) | ![Ürün Detay](img/Screenshot_20260620_222911.png) | ![Sepet Sayfası](img/Screenshot_20260620_222927.png) |

---

### 🚀 Kullanılan Teknolojiler

Bu proje, modern mobil uygulama geliştirme standartlarına uygun olarak aşağıdaki teknolojilerle inşa edilmiştir:

*   **Flutter (Sürüm: 3.22.2 - Stable)**: Google'ın cross-platform mobil uygulama geliştirme framework'ü.
*   **Dart (Sürüm: 3.4.3)**: Null-safety destekli, güçlü tip güvenliğine sahip programlama dili.
*   **Material Design 3**: Google'ın en güncel tasarım dili ile modern ve estetik bileşenler.
*   **Google Fonts (Sürüm: 6.1.0)**: Okunaklılık ve profesyonel görünüm için tercih edilen Poppins tipografisi.
*   **JSON Serialization**: Verilerin yerel bir `products.json` dosyasından asenkron olarak çekilip modellenmesi.
*   **State Management (setState)**: Uygulama içi dinamik sepet güncellemeleri için temiz ve performanslı durum yönetimi.

---

### ✨ Uygulama Özellikleri

#### 🏠 Ana Sayfa
*   **Ürün Listeleme**: Modern kart yapısında estetik görünüm.
*   **Arama Kutusu**: Ürün başlıklarına göre anlık filtreleme yapan TextField.
*   **Banner Alanı**: Kampanyaların sergilendiği gradyan geçişli profesyonel alan.
*   **GridView Görünümü**: Düzenli, 2 sütunlu ve responsive ızgara yapısı.

#### 📦 Ürün Listeleme
*   **GridView.builder**: Yüksek performanslı ve bellek dostu liste yönetimi.
*   **Dinamik Veri Yükleme**: JSON formatındaki verilerin Dart modellerine aktarımı.
*   **Kart Tabanlı Tasarım**: Yuvarlatılmış köşeler, gölgelendirme ve kategori etiketleri.

#### 🔍 Arama Özelliği
*   **Gerçek Zamanlı Filtreleme**: Kullanıcı yazdıkça anlık güncellenen ürün listesi.
*   **Hızlı Erişim**: Aranan ürüne saniyeler içinde ulaşma imkanı.

#### 📄 Ürün Detay Sayfası
*   **Büyük Ürün Görseli**: Ürünü detaylı inceleme imkanı sunan yüksek kaliteli görseller.
*   **Zengin Bilgi Paneli**: Ürün açıklaması, fiyat, kategori ve rating (yıldız) bilgisi.
*   **Sepete Ekleme İşlemi**: Tek tıkla ürün ekleme ve SnackBar (bildirim) sistemi.

#### 🛒 Sepet Sistemi
*   **Ürün Yönetimi**: Sepete eklenen ürünleri listeleme ve anlık silme.
*   **Anlık Hesaplama**: Toplam sepet tutarının anlık olarak güncellenmesi.
*   **Satın Alma Simülasyonu**: "Satın Al" butonu ile başarılı işlem süreci.

---

### 🎓 Eğitim Kapsamında Kazanımlar

Bu proje sonunda aşağıdaki teknik ve pratik yetkinlikler elde edilmiştir:

*   **Flutter Mimarisi**: Temel mimari yapı ve çalışma prensiplerini anlama.
*   **Widget Yönetimi**: Stateless ve Stateful widget'ların yaşam döngüsünü kavrama.
*   **Veri Modelleme**: JSON verilerini `factory` metotları (fromJson/toJson) ile yönetme.
*   **Navigasyon**: `Navigator.pushNamed` ve **Route Arguments** ile sayfalar arası veri taşıma.
*   **State Management**: `setState` kullanarak uygulama durumunu etkili bir şekilde güncelleme.
*   **Asset Yönetimi**: Yerel JSON ve görsel dosyalarının projeye dahil edilmesi.
*   **Modern UI/UX**: Material 3 ve Sliver (esnek kaydırma) efektlerini uygulama.
*   **Klasörleme Mantığı**: Models, Data, Screens, Widgets hiyerarşisini kurma.

---

### 📁 Proje Klasör Yapısı
