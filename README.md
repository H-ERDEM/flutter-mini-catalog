# 📱 Mini Katalog Uygulaması / Mini Catalog App

Language: [Türkçe](#-türkçe) | [English](#-english)

---

## 🇹🇷 Türkçe

Yazılım stajı kapsamında geliştirilen, ürünlerin JSON verisinden dinamik olarak yüklendiği, modern arayüzlü ve tam fonksiyonel bir Flutter mobil katalog uygulamasıdır.

### 📸 Ekran Görüntüleri

| Ana Sayfa | Ürün Detay | Sepet Sayfası |
| :---: | :---: | :---: |
| ![Ana Sayfa](img/home_screen.png) | ![Ürün Detay](img/detail_screen.png) | ![Sepet Sayfası](img/cart_screen.png) |

---

### 🚀 Kullanılan Teknolojiler

*   **Flutter & Dart**: Cross-platform mobil uygulama geliştirme ve güçlü tip güvenliği.
*   **Material Design 3**: Google'ın en güncel tasarım dili ile modern bileşenler.
*   **Google Fonts (Poppins)**: Okunaklı ve estetik tipografi.
*   **JSON Serialization**: Verilerin asenkron olarak yerel JSON dosyasından çekilmesi ve modellenmesi.
*   **State Management (setState)**: Uygulama içi dinamik sepet güncellemeleri için temiz state yönetimi.

---

### ✨ Özellikler

*   **Dinamik Ürün Listeleme**: 30'dan fazla teknolojik ürünün `GridView.builder` ile performanslı listelenmesi.
*   **Gelişmiş Arama & Filtreleme**: `TextField` üzerinden ürün başlıklarına göre anlık arama yapabilme.
*   **Sliver Mimarisi**: `SliverAppBar` ve esnek kaydırma efektleri ile profesyonel kullanıcı deneyimi.
*   **Gelişmiş Navigasyon**: `Navigator.pushNamed` ve `Route Arguments` ile sayfalar arası güvenli veri iletimi.
*   **Tam Fonksiyonel Sepet**: Ürün ekleme, silme, toplam tutar hesaplama ve "Satın Al" simülasyonu.
*   **Responsive Tasarım**: Farklı ekran boyutları ve yönelimlerine tam uyumlu arayüz.

---

### 📁 Proje Klasör Yapısı

```text
lib/
├── main.dart                 # Uygulama ve Tema ayarları, Rotalar
├── models/
│    └── product.dart         # Ürün veri modeli (fromJson/toJson)
├── data/
│    └── product_data.dart    # JSON yükleme servisi ve Sepet verisi
├── screens/
│    ├── home_screen.dart     # Liste, Banner ve Arama ekranı (Sliver yapısı)
│    ├── product_detail_screen.dart # Detay bilgileri ve Sepete Ekleme
│    └── cart_screen.dart     # Sepet yönetim ve Ödeme simülasyonu
├── widgets/
│    ├── product_card.dart    # Modern ürün kartı bileşeni
│    └── search_bar_widget.dart # Özelleştirilmiş arama çubuğu
└── assets/
     └── products.json        # 30+ Teknoloji ürünü içeren veri seti
```

---

### 🛠️ Kurulum ve Lokal Çalıştırma

Projeyi yerel bilgisayarınızda çalıştırmak için aşağıdaki adımları sırasıyla uygulayınız:

#### 1. Bağımlılıkları Yükleyin
Terminalde proje ana dizinine gidin ve şu komutu çalıştırın:
```bash
flutter pub get
```

#### 2. Uygulamayı Başlatın
Uygulamayı bir emülatörde veya gerçek cihazda çalıştırmak için:
```bash
flutter run
```

---

### 🌐 GitHub Yayına Alma Adımları

#### GitHub'a Yükleme Adımları:
1. GitHub profilinizde yeni bir depo (repository) oluşturun.
2. Bilgisayarınızdaki proje klasöründe terminali açıp sırasıyla şu komutları çalıştırın:
   ```bash
   git init
   git add .
   git commit -m "first commit: Mini Katalog Uygulaması Projesi"
   git branch -M main
   git remote add origin https://github.com/H-ERDEM/flutter-mini-catalog.git
   git push -u origin main
   ```

---
---

## 🇺🇸 English

A professional Flutter mobile catalog application developed as part of a software internship, featuring dynamic data loading from JSON, a modern interface, and full shopping cart functionality.

### 📸 Screenshots

| Home Screen | Product Detail | Cart Screen |
| :---: | :---: | :---: |
| ![Home Screen](img/home_screen.png) | ![Product Detail](img/detail_screen.png) | ![Cart Screen](img/cart_screen.png) |

---

### 🚀 Technologies Used

*   **Flutter & Dart**: Cross-platform mobile development with strong type safety.
*   **Material Design 3**: Modern UI components using Google's latest design language.
*   **Google Fonts (Poppins)**: Aesthetic and readable typography.
*   **JSON Serialization**: Asynchronous data fetching and modeling from local storage.
*   **State Management (setState)**: Clean state handling for real-time cart updates.

---

### ✨ Features

*   **Dynamic Product Listing**: High-performance listing of 30+ tech products using `GridView.builder`.
*   **Advanced Search**: Real-time filtering based on product titles.
*   **Sliver Architecture**: Professional user experience with `SliverAppBar` and fluid scroll effects.
*   **Advanced Navigation**: Secure data passing between screens via `Navigator.pushNamed` and `Route Arguments`.
*   **Functional Cart**: Add/remove items, real-time total calculation, and "Purchase" simulation.
*   **Responsive UI**: Fully adaptive for various screen sizes and orientations.

---

### 📁 Project Folder Structure

```text
lib/
├── main.dart                 # App configurations, Theme, and Routes
├── models/
│    └── product.dart         # Product data model (fromJson/toJson)
├── data/
│    └── product_data.dart    # JSON service and global Cart state
├── screens/
│    ├── home_screen.dart     # List, Banner, and Search (Sliver structure)
│    ├── product_detail_screen.dart # Detailed info and Add to Cart logic
│    └── cart_screen.dart     # Cart management and Checkout simulation
├── widgets/
│    ├── product_card.dart    # Modern product card component
│    └── search_bar_widget.dart # Custom search input widget
└── assets/
     └── products.json        # Dataset containing 30+ tech products
```

---

### 🛠️ Installation & Local Setup

Follow these steps to run the application locally on your machine:

#### 1. Install Dependencies
Navigate to the project root directory and run:
```bash
flutter pub get
```

#### 2. Start the Application
To launch the app on an emulator or a physical device:
```bash
flutter run
```

---

### 🌐 GitHub Deployment Steps

#### Steps to upload to GitHub:
1. Create a new repository on your GitHub account.
2. Open the terminal in your local project folder and execute:
   ```bash
   git init
   git add .
   git commit -m "first commit: Mini Catalog App Project"
   git branch -M main
   git remote add origin https://github.com/H-ERDEM/flutter-mini-catalog.git
   git push -u origin main
   ```
# flutter-mini-catalog
