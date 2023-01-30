SELECT * FROM books WHERE language = 'es' 
AND NOT genre='roman';

SELECT * FROM books WHERE language = 'es' 
AND genre != 'roman';

SELECT * FROM books WHERE publisher = 'Marabout'
AND price < 10;

SELECT * FROM books WHERE published_at BETWEEN '2020-01-01'
AND '2021-12-31';