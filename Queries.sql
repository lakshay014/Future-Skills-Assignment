-- Create Product_Category table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc VARCHAR(255),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create product_inventory table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY UNIQUE,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create discount table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc VARCHAR(255),
    discount_percentage DECIMAL(5, 2),
    active BIT DEFAULT 1,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc VARCHAR(255),
    SKU VARCHAR(255),
    category_id INT,
    inventory_id INT UNIQUE,
    discount_id INT,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);