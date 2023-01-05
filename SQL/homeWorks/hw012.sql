Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

-> SELECT COUNT 
-> ( 
->   SELECT * FROM film
->   WHERE lenght > AVG(lenght)
-> )
-> FROM film;

-) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

-> SELECT COUNT 
-> ( 
->   SELECT * FROM film
->   WHERE rental_rate = MAX(rental_rate)
-> )
-> FROM film;

-) film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

-> SELECT * FROM film 
-> WHERE rental_rate = 
-> ( 
->   SELECT MIN(rental_rate) FROM film
-> )
-> AND replacement_cost =
-> (
-> SELECT MIN(replacement_cost) FROM film
-> );

-) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

-> SELECT customer.first_name, customer.last_name FROM customer 
-> WHERE  customer_id =
-> ( 
->   SELECT customer_id FROM payment
->   WHERE amount = MAX(amount)
-> );

--- not: son sorgu düzenlenecek, şuan hatalı olabilir
