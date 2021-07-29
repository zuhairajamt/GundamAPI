# project-2-zuhairajamt
Zuhairaja Musheera Tunggorono / 05311940000033 <br>
## Gundam API
API ini merupakan API untuk mengakses beberapa model plastik gundam dari HG (High Grade) sampai dengan PG (Perfect Grade) serta untuk mengakses data film-film gundam 

![Tabel](https://user-images.githubusercontent.com/80949224/119937479-0cd1e480-bfb5-11eb-9c0d-ad7fc08b8eed.PNG)

## Site dan dokumentasi
url: https://project2gundamapi.herokuapp.com/ <br>
dokumentasi: https://project2gundamapi.docs.apiary.io/

## Dependencies yang digunakan
1. Express (node.js framework) <br>
2. MySQL (driver mysql untuk node.js)  <br>
3. Body-parser (middleware untuk menghandle post body request)  <br>
4. Jsonwetoken (Membuat token dan auth) <br>

## Cara memakai secara localhost
1. Clone git 
2. Buka web server
3. Import sql yang sudah tersedia dan beri nama gundam_db
4. Uncomment (line 11 - 17) bagian fungsi conn database dan comment yang bagian conn yang bagian online / hosting di file routes dan index.js <br>
![sql](https://user-images.githubusercontent.com/80949224/119865796-3e5f9700-bf46-11eb-927e-df508fe3ae10.PNG)
6. Jalankan lewat terminal npm install agar mendapatkan node_modules <br>
![npm install](https://user-images.githubusercontent.com/80949224/119865437-da3cd300-bf45-11eb-8e93-490cfb3b069d.PNG)
8. Install dependencies yang diperlukan
9. Jalankan node . untuk start <br>
![node ](https://user-images.githubusercontent.com/80949224/119865879-5b946580-bf46-11eb-826f-06091677dab4.PNG)

## Cara memakai token dan contoh penggunaan method
1. Untuk GET token bisa dengan https://project2gundamapi.herokuapp.com/api/user/token Token tersebut akan expired dalam 2000 detik <br>
<img src='https://user-images.githubusercontent.com/80949224/119938797-2542fe80-bfb7-11eb-9c5e-5419e4b339a2.PNG' width='700'>
2. Kemudian taruh token di Headers dengan KEY = Authorization dan VALUE = Bearer (spasi) Token <br>
<img src='https://user-images.githubusercontent.com/80949224/119939077-7ce16a00-bfb7-11eb-86ae-9f56bf4d8e0d.PNG' width='700'> 
3. Lau jika misal ingin post gunakan Body seperti ini di postman <br>
<img src='https://user-images.githubusercontent.com/80949224/119940562-94b9ed80-bfb9-11eb-9b04-3d21db0a68db.PNG' width='700'>
5. jika tidak mengaktifkan token atau token salah akan muncul status forbidden <br>
<img src='https://user-images.githubusercontent.com/80949224/119940575-9aafce80-bfb9-11eb-8742-910e0cce3a3f.PNG' width='700'>
6. Untuk yang lebih lengkap method atau endpoint lainnya bisa di lihat di bagian dokumentasi API https://project2gundamapi.docs.apiary.io/
