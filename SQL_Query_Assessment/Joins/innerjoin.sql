CREATE TABLE Brands (
    brand_id INT PRIMARY KEY IDENTITY(1,1),
    brand_name VARCHAR(50)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    category_name VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY(100,1),
    product_name VARCHAR(100),
    brand_id INT,
    category_id INT,
    model_year INT,
    list_price DECIMAL(10,2),

    CONSTRAINT fk_products_brands 
    FOREIGN KEY (brand_id) REFERENCES Brands(brand_id),

    CONSTRAINT fk_products_categories 
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Brands (brand_name) VALUES
('Samsung'),
('Apple'),
('Sony'),
('Dell');

INSERT INTO Categories (category_name) VALUES
('Smartphones'),
('Laptops'),
('Televisions'),
('Headphones');

INSERT INTO Products (product_name, brand_id, category_id, model_year, list_price) VALUES
('Galaxy S21',1,1,2023,850),
('iPhone 14',2,1,2023,1200),
('Sony Bravia X90',3,3,2022,950),
('Dell Inspiron 15',4,2,2023,750),
('Sony WH-1000XM5',3,4,2023,400),
('Galaxy A54',1,1,2023,520),
('MacBook Air M2',2,2,2023,1300);

select * from brands;
select * from Categories;
select * from Products;

select p.product_name,b.brand_name,c.category_name,p.model_year,p.list_price
from products p inner join brands b
on p.brand_id=b.brand_id
inner join Categories c
on p.category_id=c.category_id
where p.list_price>500
order by p.list_price asc



