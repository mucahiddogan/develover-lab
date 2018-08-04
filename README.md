# develover-lab

![logo](logo.png)


# Gereksinim Analizi
--------------------
**Özet**

İnsanların aktif ve verimli çalışabilmeleri için oluşturulmuş ortamın tanıtılacağı ve bu ortama üye olmaları, güvenli giriş yababilmeleri için oluşturulacak ilk etapta 1000 kişi kapasiteli bir web sitesi.

 **Tasarımın Ne şekilde yapılacağı**
 
   Mekanın tanıtımının, mevkisinin ve iletişim bilgilerinin olduğu bir anasayfa ile kullanıcı karşılanacak. Üye ise giriş yapabileceği, değilse kaydolmak için başvurabileceği bir alan oluşturalacak. Üye giriş butonu vb. alanlar açık ve anlaşılır, göz yormayan, sade tasarımıyla kullanıcının rahatlıkla kullanabileceği şekilde olacak.

 **Roller**
 
  Sayfayı yönetme yetkisi olan bir admin ve adminin belirlediği üye kabulünde söz sahibi paydaşları ve mekanın üyeleri olacak. Paydaşlar normal üye ile aynı özelliklere sahiptir fakat yeni üye olanların oynaylanması için oy kullanma yetkisi vardır.

 **Uygulama Bölümleri**
 
Mekanı her yönüyle tanıtan bir bölüm olacak(konum,tel vs.). Üye girişi ve kayıt olmak isteyenler için alan oluşturulacak.

 **Senaryolar**
 
1. [Üye]: Üye web sayfasına tıklar. Kaydı var ise sisteme giriş yapar yoksa üye ol kısmından üye olabilmek için başvuru yapar ve bu başvurusu admin ve paydaşları tarafından değerlendirilir. Söz sahibi kişilerin yarısından fazlasının onayı olursa başvuru yapan kişi artık üye olmuş olur mekana güvenli giriş yababilmesi için kart numarası verilir.

2. Üye kişisel bilgilerini değiştirebilir, birilerine referans olabilir.
 
3. [Paydaş]: Adminin belirlediği kişilerdir. Normal üyeler gibi üye girişinden giriş yapar. Tek farkı oy kullanabilme yetkisidir ve bunun için kendi sayfasında ek olarak üye olmak için başvuranları onaylayacağı ya da reddedeceği alanlarda işlem yapar.

4. [Admın]: Sistemde her işleme yetkisi olan tek kişidir. Normal üyenin özelllikleri adminde de bulunur. Oy kullanır ve paydaşlarını seçer. Üyelerin durumlarını aktif-pasif olarak değiştirebilir.

**Kullanılacak Teknolojiler**

  - Web framworkü olan Ruby on Rails
  - Database için postgresql
  - Deployment için heroku 
  - Bootstrap
  

  ## :octocat: Contributors

* [Mücahid Doğan](https://github.com/mucahiddogan)
* [Muzaffer Kadir Yılmaz](https://github.com/muzafferkadir)
* [Müberra Bülbül](https://github.com/muberra97)
* [Nafi Durmuş](https://github.com/nafidurmus)



  ##  :hash: #oyk2018