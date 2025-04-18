--SELECT id, title, titel_full, price, category, label, imgsrc FROM djecommerce_item;
select * FROM djecommerce_item order by 1;


--UPDATE djecommerce_item SET imgsrc= 'img\bread2.jpg' WHERE title = 'bread';
UPDATE djecommerce_item SET imgsrc= 'img\oranges.jpg' WHERE title = 'orange';
UPDATE djecommerce_item SET imgsrc= 'img\potato.jpg' WHERE title = 'potato';
UPDATE djecommerce_item SET imgsrc= 'img\tomato.jpg' WHERE title = 'tomato';
UPDATE djecommerce_item SET imgsrc= 'img\milk.jpg' WHERE title = 'milk';



UPDATE djecommerce_item SET category = 'F' WHERE title = 'orange';
UPDATE djecommerce_item SET category = 'V' WHERE title in ('tomato', 'potato');
UPDATE djecommerce_item SET category = 'BB' WHERE title = 'bread';
UPDATE djecommerce_item SET category = 'DP' WHERE title = 'milk';
UPDATE djecommerce_item SET category = 'DP' WHERE title = 'iogurt';




UPDATE djecommerce_item SET title_full = 'Молоко Айс 3,2%' WHERE title = 'milk';
UPDATE djecommerce_item SET title_full = 'Хлеб гречневый' WHERE title = 'bread';
UPDATE djecommerce_item SET title_full = 'Помидоры черри' WHERE title = 'tomato';
UPDATE djecommerce_item SET title_full = 'Апельсин' WHERE title = 'orange';
UPDATE djecommerce_item SET title_full = 'Картофель' WHERE title = 'potato';

--###################
INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('semga-fish', 7830, 'DP', 'P', 'img\semga-fish.png', 'Семга Семь Морей');


--DELETE FROM djecommerce_item WHERE id=15;


INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('sliva', 2550, 'F', 'P', 'img\sliva.png', 'Слива');

INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('karbyz', 2775, 'F', 'P', 'img\karbyz.png', 'Карбыз');


INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('krevetki', 7737, 'F', 'P', 'img\krevetki.png', 'Креветки');

INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('iogurt', 300, 'F', 'P', 'img\iogurt.png', 'Йогурт Активиа черника злаки и лен');



--##############	slug UPDATE 
select * FROM djecommerce_item order by 1;

SELECT id, slug, 
       'UPDATE djecommerce_item SET slug = ''test-product-' || id || ''' WHERE id = ' || id || ';' 
FROM djecommerce_item 
ORDER BY id;

UPDATE djecommerce_item SET slug= 'test-product-1' WHERE id = 1;
UPDATE djecommerce_item SET slug= 'test-product-2' WHERE id = 5;
UPDATE djecommerce_item SET slug= 'test-product-6' WHERE id = 6;
UPDATE djecommerce_item SET slug= 'test-product-9' WHERE id = 9;
UPDATE djecommerce_item SET slug = 'test-product-10' WHERE id = 10;
UPDATE djecommerce_item SET slug = 'test-product-11' WHERE id = 11;
UPDATE djecommerce_item SET slug = 'test-product-12' WHERE id = 12;
UPDATE djecommerce_item SET slug = 'test-product-13' WHERE id = 13;
UPDATE djecommerce_item SET slug = 'test-product-14' WHERE id = 14;
UPDATE djecommerce_item SET slug = 'test-product-16' WHERE id = 16;
UPDATE djecommerce_item SET slug = 'test-product-17' WHERE id = 17;
UPDATE djecommerce_item SET slug = 'test-product-18' WHERE id = 18;
UPDATE djecommerce_item SET slug = 'test-product-19' WHERE id = 19;