EASY:
  
Data (Ma'lumot)
Ma'lumot — bu faktlar yoki raqamlar ko‘rinishidagi axborot. Masalan, ism, yosh, narx kabi.

Database (Ma'lumotlar bazasi)
Ma'lumotlarni saqlash va boshqarish uchun tashkil etilgan struktura yoki tizim. Masalan, SQL Server ichidagi ma'lumotlar to‘plami.

Relational Database (Munozarali ma'lumotlar bazasi)
Ma'lumotlar jadvallar ko‘rinishida saqlanadi va ular o‘rtasida aloqalar (bog‘lanishlar) mavjud bo‘ladi. Har bir jadval satrlar va ustunlardan tashkil topgan.

Table (Jadval)
Ma'lumotlarni satrlar va ustunlar shaklida saqlash uchun mo‘ljallangan struktura. Masalan, Students jadvali talabalar haqida ma'lumot saqlashi mumkin.

2. SQL Server’ning 5 ta asosiy xususiyati
Relational Database Engine — ma'lumotlarni jadvallar ko‘rinishida boshqaradi.

Xavfsizlik (Security) — foydalanuvchi kirish huquqlarini boshqaradi.

Backup va Restore — ma'lumotlarni zaxiralash va tiklash imkoniyati.

Stored Procedures va Functions — takrorlanuvchi kodlarni saqlash va ishlatish.

SSMS bilan birga ishlash — qulay grafik interfeys yordamida boshqaruv.

3. SQL Server’ga ulanishda autentifikatsiya turlari
Windows Authentication: Windows tizimdagi hisob orqali kirish.

SQL Server Authentication: SQL Server uchun maxsus foydalanuvchi nomi va parol bilan kirish.


  
  MEDIUM:

  create database Cardb 
create table Cars (
carid int primary key, 
brand varchar (50), 
model varchar (50),
year int); 
insert into Cars values (1, 'toyota', 'corolla', 2020);
insert into Cars values (2, 'BMW', 'x5', 2022);
insert into Cars values (3, 'tesla', 'model 3', 2023)
 
select * from Cars
  SQL Server	Microsoft tomonidan ishlab chiqilgan ma'lumotlar bazasi tizimi (DBMS).
SSMS (SQL Server Management Studio)	SQL Server bilan ishlash uchun grafik interfeysli dastur. Kod yozish, ma’lumotlarni boshqarish uchun qulay.
SQL (Structured Query Language)	Ma’lumotlar bazasi bilan muloqot qilish uchun maxsus til. (SELECT, INSERT, UPDATE va h.k.)



HARD
  
DML (INSERT, UPDATE, DELETE)

insert into Cars values (4, 'Honda', 'Civic', 2021)
update	Cars set year = 2019 where carid = 4;
delete from Cars where carid = 1


DDL (Data Definition Language) — strukturani o‘zgartirish

alter table Cars add Price int;
drop table Cars; 


DCL (Data Control Language) — huquqlarni boshqarish

grant select on Cars to user1;
revoke select on Cars from user1;


TCL (Transaction Control Language) — tranzaksiyalar

begin transaction;
update Cars set Price = 25000 where Carid = 2;
commit; --hammasi birga yoziladi
  
