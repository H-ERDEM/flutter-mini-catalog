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

Bu proje, modern mobil uygulama geliştirme standartlarına uygun olarak aşağıdaki teknoloji yığını ile inşa edilmiştir:

*   **Flutter (Sürüm: 3.22.2)**: Google'ın cross-platform mobil uygulama geliştirme framework'ü.
*   **Dart (Sürüm: 3.4.3)**: Null-safety destekli, güçlü tip güvenliğine sahip programlama dili.
*   **Material Design 3**: Google'ın en güncel tasarım dili ile modern bileşenler.
*   **Google Fonts (Sürüm: 6.1.0)**: Profesyonel görünüm için tercih edilen Poppins tipografisi.
*   **JSON Serialization**: Verilerin yerel `products.json` dosyasından asenkron olarak çekilip modellenmesi.
*   **State Management (setState)**: Uygulama içi dinamik sepet güncellemeleri için temiz durum yönetimi.

---

### ✨ Uygulama Özellikleri

*   **Dinamik Listeleme**: 30'dan fazla ürünün modern kart yapısında `GridView.builder` ile performanslı listelenmesi.
*   **Canlı Arama**: Ürün başlıklarına göre anlık filtreleme ve hızlı erişim.
*   **Sliver Mimarisi**: Esnek AppBar ve akıcı kaydırma (scrolling) deneyimi.
*   **Detay Sayfası**: Navigator Route Arguments ile ürün detaylarının (rating, kategori, açıklama) gösterimi.
*   **Sepet Yönetimi**: Ürün ekleme, silme ve toplam tutarın anlık hesaplanması.
*   **Satın Alma**: Başarılı işlem sürecinin tam simülasyonu.

---

### 🎓 Eğitim Kapsamında Kazanımlar

Bu proje sonunda aşağıdaki teknik yetkinlikler elde edilmiştir:
*   Flutter mimarisini ve widget ağacı mantığını kavrama.
*   Stateless ve Stateful widget'ların yaşam döngüsü yönetimi.
*   JSON veri modelleme ve `factory` metodları (fromJson/toJson).
*   Sayfalar arası Navigator kullanımı ve güvenli veri taşıma.
*   Asset (görsel/json) yönetimi ve klasörleme hiyerarşisi.
*   Modern Mobil UI/UX tasarımı uygulama.

---


### 📂 Proje Dizin Yapısı

```text
flutter-mini-catalog/
├── android/                     # Android platform dosyaları
├── assets/
│   └── products.json            # 30+ ürün içeren veri seti
├── img/
│   └── Screenshot_...           # Uygulama ekran görüntüleri
├── ios/                         # iOS platform dosyaları
├── lib/
│   ├── data/
│   │   └── product_data.dart    # JSON yükleme ve global sepet yönetimi
│   ├── models/
│   │   └── product.dart         # Ürün veri modeli (fromJson/toJson)
│   ├── screens/
│   │   ├── home_screen.dart     # Ana Sayfa (Arama & GridView)
│   │   ├── product_detail_screen.dart # Ürün Detay Sayfası
│   │   └── cart_screen.dart     # Sepet ve Ödeme Sayfası
│   ├── widgets/
│   │   ├── product_card.dart    # Ürün kartı bileşeni
│   │   └── search_bar_widget.dart # Arama çubuğu bileşeni
│   └── main.dart                # Uygulama giriş noktası ve yönlendirmeler
├── linux/                       # Linux platform dosyaları
├── macos/                       # macOS platform dosyaları
├── test/                        # Widget ve birim testleri
├── web/                         # Web platform dosyaları
├── windows/                     # Windows platform dosyaları
├── .gitignore
├── analysis_options.yaml        # Dart analizör yapılandırması
├── pubspec.yaml                 # Bağımlılıklar ve asset tanımlamaları
├── pubspec.lock                 # Bağımlılık kilit dosyası
└── README.md                    # Proje dokümantasyonu
```

---

### 🛠️ Kurulum ve Çalıştırma

1. **Bağımlılıkları Yükle:** `flutter pub get`
2. **Uygulamayı Başlat:** `flutter run`

---

## 🇺🇸 English

A professional Flutter mobile catalog application featuring dynamic data loading from JSON, Material 3 design, and a fully functional shopping cart system.

### 📸 Screenshots

| Home Screen | Product Detail | Cart Screen |
| :---: | :---: | :---: |
| ![Home Screen](img/Screenshot_20260620_222856.png) | ![Product Detail](img/Screenshot_20260620_222911.png) | ![Cart Screen](img/Screenshot_20260620_222927.png) |

---

### 🚀 Technologies Used

This project was built using the following technology stack, following modern mobile application development standards:

*   **Flutter (Version: 3.22.2)**: Google's cross-platform mobile application development framework.
*   **Dart (Version: 3.4.3)**: A strongly typed programming language with null-safety support.
*   **Material Design 3**: Modern UI components based on Google's latest design system.
*   **Google Fonts (Version: 6.1.0)**: Poppins typography for a clean and professional appearance.
*   **JSON Serialization**: Asynchronous loading and modeling of data from a local products.json file.
*   **State Management (setState)**: Lightweight and efficient state management for dynamic cart updates.
---

### ✨ Application Features
*   **Dynamic Product Listing**: Efficient rendering of 30+ products using GridView.builder with a modern card-based layout.
*   **Live Search**: Real-time product filtering based on product titles for quick access.
*   **Sliver Architecture**: Flexible AppBar implementation with a smooth scrolling experience.
*   **Product Details Page**: Display of product information (rating, category, description) using Navigator Route Arguments.
*   **Shopping Cart Management**: Add/remove products and instantly calculate the total amount.
*   **Purchase Simulation**: Complete simulation of a successful checkout process.
---

### 🎓 Learning Outcomes

The following technical skills were gained through this project:

* Understanding Flutter architecture and widget tree structure.
* Managing the lifecycle of Stateless and Stateful widgets.
* JSON data modeling with factory constructors (fromJson / toJson).
* Navigation between screens and safe data transfer using Navigator.
* Asset management (images and JSON files) and project folder organization.
* Implementation of modern Mobile UI/UX design principles.
---

### 📂 Project Structure

```text
flutter-mini-catalog/
├── android/                     # Android platform files
├── assets/
│   └── products.json            # Dataset containing 30+ products
├── img/
│   └── Screenshot_...           # Application screenshots
├── ios/                         # iOS platform files
├── lib/
│   ├── data/
│   │   └── product_data.dart    # JSON loading and global cart management
│   ├── models/
│   │   └── product.dart         # Product data model (fromJson/toJson)
│   ├── screens/
│   │   ├── home_screen.dart     # Home Screen (Search & GridView)
│   │   ├── product_detail_screen.dart # Product Details Screen
│   │   └── cart_screen.dart     # Shopping Cart & Checkout Screen
│   ├── widgets/
│   │   ├── product_card.dart    # Product card component
│   │   └── search_bar_widget.dart # Search bar component
│   └── main.dart                # Application entry point and routes
├── linux/                       # Linux platform files
├── macos/                       # macOS platform files
├── test/                        # Widget and unit tests
├── web/                         # Web platform files
├── windows/                     # Windows platform files
├── .gitignore
├── analysis_options.yaml        # Dart analyzer configuration
├── pubspec.yaml                 # Dependencies and asset declarations
├── pubspec.lock                 # Dependency lock file
└── README.md                    # Project documentation
```

---

### 🛠️ Installation & Setup

1. **Install Dependencies**: `flutter pub get`
2. **Run the App**: `flutter run`
