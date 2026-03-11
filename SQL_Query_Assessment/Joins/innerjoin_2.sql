CREATE TABLE Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1001,1),
    customer_id INT,
    order_date DATE,
    order_status INT,
    
    CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

INSERT INTO Customers (first_name, last_name) VALUES
('Ravi', 'Kumar'),
('Sneha', 'Reddy'),
('Arjun', 'Sharma'),
('Priya', 'Nair'),
('Rahul', 'Verma');

INSERT INTO Orders (customer_id, order_date, order_status) VALUES
(1, '2024-03-01', 1),
(2, '2024-03-02', 4),
(3, '2024-03-03', 2),
(4, '2024-03-04', 1),
(5, '2024-03-05', 4),
(1, '2024-03-06', 3);

select c.first_name,c.last_name,o.order_id,o.order_date,o.order_status
from Customers c join Orders o 
on c.customer_id=o.customer_id
where o.order_status in (1,4)
order by o.order_date desc


