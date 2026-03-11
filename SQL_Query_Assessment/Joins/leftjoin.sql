CREATE TABLE stocks (
    store_id INT,
INSERT INTO stocks (store_id, product_id, quantity) VALUES
(1,100,50),
(1,101,40),
(2,102,60),
(2,103,30),
(3,104,70),
(3,105,20);

select * from stocks
select * from products
select * from order_items
select * from stores

ALTER TABLE order_items
ADD product_id INT;

ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_products
FOREIGN KEY (product_id) REFERENCES products(product_id);


UPDATE order_items SET product_id = 100 WHERE item_id = 1;
UPDATE order_items SET product_id = 101 WHERE item_id = 2;
UPDATE order_items SET product_id = 102 WHERE item_id = 3;
UPDATE order_items SET product_id = 103 WHERE item_id = 4;
UPDATE order_items SET product_id = 104 WHERE item_id = 5;
UPDATE order_items SET product_id = 105 WHERE item_id = 6;

select p.product_name,
s.store_name,
st.quantity as availableStockQuantity,
sum(isnull(oi.quantity,0))  as total_quantity_sold
from stocks st
inner join  products p
on st.product_id=p.product_id
inner join stores s
on st.store_id=s.store_id
left join order_items oi
on st.product_id=oi.product_id
group by p.product_name,s.store_name,st.quantity
order by p.product_name