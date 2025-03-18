--SELECT id, title, titel_full, price, category, label, imgsrc FROM djecommerce_item;
select * FROM djecommerce_item;


--UPDATE djecommerce_item SET imgsrc= 'img\bread2.jpg' WHERE title = 'bread';
UPDATE djecommerce_item SET imgsrc= 'img\oranges.jpg' WHERE title = 'orange';
UPDATE djecommerce_item SET imgsrc= 'img\potato.jpg' WHERE title = 'potato';
UPDATE djecommerce_item SET imgsrc= 'img\tomato.jpg' WHERE title = 'tomato';
UPDATE djecommerce_item SET imgsrc= 'img\milk.jpg' WHERE title = 'milk';



UPDATE djecommerce_item SET category = 'F' WHERE title = 'orange';
UPDATE djecommerce_item SET category = 'V' WHERE title in ('tomato', 'potato');
UPDATE djecommerce_item SET category = 'BB' WHERE title = 'bread';
UPDATE djecommerce_item SET category = 'DP' WHERE title = 'milk';




UPDATE djecommerce_item SET title_full = 'Молоко Айс 3,2%' WHERE title = 'milk';
UPDATE djecommerce_item SET title_full = 'Хлеб гречневый' WHERE title = 'bread';
UPDATE djecommerce_item SET title_full = 'Помидоры черри' WHERE title = 'tomato';
UPDATE djecommerce_item SET title_full = 'Апельсин' WHERE title = 'orange';
UPDATE djecommerce_item SET title_full = 'Картофель' WHERE title = 'potato';

--###################
INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('semga-fish', 7830, 'DP', 'P', 'img\semga-fish.png', 'Семга Семь Морей');


INSERT INTO djecommerce_item
(title, price, category, label, imgsrc, title_full)
VALUES('sliva', 2550, 'DP', 'P', 'img\sliva.png', 'Слива');
