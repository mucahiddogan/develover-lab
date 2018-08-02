# develover-team

# Gereksinim Analizi
--------------------
# **Özet**
Kullanıcıların sistem aracılığıyla kendilerine çalışma ortamı ayarlayabildiği uygulama.
# **Tasarımın Ne şekilde yapılacağı**
> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
# **Roller**
* [AngularJS] - HTML enhanced for web apps!
# **Uygulama Bölümleri**
Kullanıcıların web üzerinden kullanabileceği bir program.
# **Senaryolar**
```sh
1. Üye: Üye giriş sayfasına tıklar. Kayıtlı ise sisteme giriş yapar değil ise üye ol sayfasından üye olur,
ve sisteme giriş yapar. Üye kendi ubilgilerini değiştirebilir.Sisteme birilerini davet eder.statüsü aktif ise 
sisteme giriş yapabilir ; pasif ise sisteme giriş yapamaz.
2. paydaş: normal üye ile aynı özelliklere sahiptir fakat yeni üye olanların oynaylanması için oy kullanma yeteneği vardır.
3. admin: sistemde her işleme yetkisi olan tek kişidir.normal üyenin özelllikleri adminde bulunur.oy kullanabilir.
üyelerin durumlarını aktif-pasif olarak değiştirebilir.
```
# **Kullanılacak Third-Party uygulamanın belirlenmesi**
| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| Github | [plugins/github/README.md][PlGh] |
# **Kullanılacak Teknolojiler**

  - Web framworkü olan Ruby on Rails kullanılacaktır.
  - Database için sqllite kullanılacakrı.
  - Proje localhost:3000 adresinde çalışacaktır.
  


