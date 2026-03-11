CREATE TABLE stores (
    store_id INT PRIMARY KEY IDENTITY(1,1),
    store_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY IDENTITY(1001,1),
    store_id INT,
    order_date DATE,
    order_status INT,
    CONSTRAINT fk_orders_store
    FOREIGN KEY (store_id)
    REFERENCES stores(store_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT,
    quantity INT,
    list_price DECIMAL(10,2),
    discount DECIMAL(4,2),
    CONSTRAINT fk_items_orders
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);

SELECT name FROM sys.tables;


INSERT INTO stores (store_name) VALUES
('Downtown Store'),
('City Mall Store'),
('Airport Store');

INSERT INTO orders (store_id, order_date, order_status) VALUES
(1,'2024-03-01',4),
(1,'2024-03-02',2),
(2,'2024-03-03',4),
(3,'2024-03-04',4),
(2,'2024-03-05',1),
(3,'2024-03-06',4);

INSERT INTO order_items (order_id, quantity, list_price, discount) VALUES
(1001,2,500,0.10),
(1001,1,700,0.05),
(1003,3,300,0.00),
(1004,1,1000,0.15),
(1004,2,450,0.10),
(1006,4,250,0.05);

select * from stores;
select * from orders;
select * from order_items


select s.store_name ,sum(i.quantity*i.list_price*(1-i.discount)) as Total_Sales
from stores s inner join orders o
on s.store_id=o.store_id
inner join order_items i 
on o.order_id=i.order_id
where o.order_status=4
group by s.store_name
order by Total_Sales desc
