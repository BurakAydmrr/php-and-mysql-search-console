## PHP AND MYSQL SEARCH CONSOLE
### EN
---
-   You want to search through the data in the database, this project will guide you and it will be useful for you.

`conn.php` => connect to database via this file 

`index.php` => Change the `$sql` variable in the file to your own database table
```php
 $sql = "SELECT * FROM table_name WHERE `column name`  LIKE '%$search%'"
```

### All you have to do is do this for the project to work.

----
### TR
- Veritabanındaki Verileriniz Arasında Arama Yapmak istiyorunuz bu proje size yol gösterecek ve işine yaracaktır.

`conn.php` => veri tabanı bilgilerinizi girin

`index.php` => bu  dosyada ``sql`` adlı değişken bilgilerini değiştirmeniz gerekiyor.
```php
 $sql = "SELECT * FROM tablo_adi WHERE `sutun_adi`  LIKE '%$search%'"
```
Bunları Yapmanız Projeyi Kullanmak İçin Yeterli Olucaktır.
