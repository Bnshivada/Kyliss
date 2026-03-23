# <p align="center"><img src="https://raw.githubusercontent.com/Bnshivada/Kyliss/main/assets/icons/icon.png" width="100" alt="Kyliss Icon"></p>
# <p align="center">👀 Kyliss: AI-Powered Hands-Free Reels Controller</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android" alt="Platform">
  <img src="https://img.shields.io/badge/Framework-Flutter-02569B?style=for-the-badge&logo=flutter" alt="Framework">
  <img src="https://img.shields.io/badge/AI-Google_ML_Kit-4285F4?style=for-the-badge&logo=google" alt="AI Engine">
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" alt="License">
</p>

---

## 🌟 Neden Kyliss?

Mutfakta yemek yaparken, spor salonunda dambıl kaldırırken veya sadece uzanırken ekrana dokunmak zahmetli olabilir. **Kyliss**, bu anlarda devreye girer:
- **Çift Göz Kırpma:** Anında bir sonraki videoya geçer.
- **Hassas Takip:** Düşük ışıkta bile çalışan optimize edilmiş AI algoritması.
- **Erişilebilirlik:** Diğer uygulamaların üzerinde akıcı bir şekilde çalışır.

---

## 📸 Uygulama İçi Görüntüler

<p align="center">
  <img src="https://raw.githubusercontent.com/Bnshivada/Kyliss/main/assets/screenshot_1.png" width="200" alt="Uygulama Ana Ekranı">
  <img src="https://raw.githubusercontent.com/Bnshivada/Kyliss/main/assets/screenshot_2.png" width="200" alt="İzin İsteme Ekranı">
  <img src="https://raw.githubusercontent.com/Bnshivada/Kyliss/main/assets/screenshot_3.png" width="200" alt="Hassasiyet Ayarları">
</p>

*(Not: Bu görseller yer tutucudur. Uygulamanızın ekran görüntülerini `assets/` klasörüne ekleyip yolları güncelleyebilirsiniz.)*

---

## 🚀 Özellikler

- [x] **Akıllı Göz Takibi:** Google ML Kit kullanarak göz kapaklarının açıklık oranını (**EAR**) milisaniyeler içinde hesaplar.
- [x] **Otomatik Kaydırma:** Çift göz kırpma algılandığında Android Accessibility Service aracılığıyla dikey kaydırma (**swipe**) tetikler.
- [x] **İzin Yönetimi:** Kullanıcı dostu arayüz ile sistem izinlerini (**Kamera** ve **Erişilebilirlik**) kolayca yönetme.
- [x] **Anlık Bildirim:** Kaydırma başarılı olduğunda ekranda görsel geri bildirim.
- [x] **Gizlilik Odaklı:** Tüm görüntü işleme işlemleri cihaz üzerinde (**on-device**) yapılır. İnternet bağlantısı gerekmez.

---

## 📥 İndirme ve Kurulum

Kyliss'i kullanmaya başlamak için teknik bilgiye ihtiyacınız yok! Sadece şu adımları izleyin:

1.  **En Güncel Sürümü İndirin:** Sağ taraftaki [Releases](https://github.com/Bnshivada/Kyliss/releases) sekmesine gidin ve en son yayınlanan **`.apk`** dosyasını indirin.
2.  **Yükleyin:** İndirdiğiniz dosyayı telefonunuza kurun. (Bilinmeyen kaynaklardan yükleme izni vermeniz gerekebilir).
3.  **İzinleri Verin:**
    * Uygulamayı açın ve **Kamera Erişimi**'ne onay verin.
    * **Erişilebilirlik Servisi (Accessibility Service)** ayarlarından Kyliss'i bularak "Etkinleştir" seçeneğine basın. (Bu, uygulamanın Instagram'da kaydırma yapabilmesi için gereklidir).
4.  **Keyfini Çıkarın:** Instagram'ı açın ve ellerinizi kullanmadan Reels izlemeye başlayın!

---

## 🛠️ Teknik Altyapı

| Bileşen | Teknoloji |
| :--- | :--- |
| **Framework** | **Flutter / Dart** |
| **AI Engine** | **Google ML Kit (Face Detection)** |
| **Automation** | **Android Accessibility Service** |
| **UI Design** | **CustomTkinter (Prototip) / Material 3** |

---

## 🤝 Katkıda Bulunun

Kyliss topluluğa açık bir projedir. Her türlü katkı (hata raporu, özellik önerisi, kod düzeltme) memnuniyetle karşılanır!

1. Bu projeyi **Fork**'layın.
2. Yeni bir özellik dalı (**Branch**) açın.
3. Değişikliklerinizi **Commit** edin.
4. **Pull Request** gönderin.

---

## 📄 Lisans

Bu proje **MIT Lisansı** altında korunmaktadır. Daha fazla bilgi için `LICENSE` dosyasına göz atın.

---

<p align="center">
  Developed with ❤️ by <b>Kyliss Team</b>
</p>
