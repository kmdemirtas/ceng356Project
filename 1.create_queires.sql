CREATE TABLE address (
    ID integer PRIMARY KEY,
    Door_number integer CHECK (Door_number > 0),
    Building_number integer CHECK (Building_number > 0),
    Street varchar,
    City varchar,
    State varchar
);

CREATE TABLE position (
    ID integer PRIMARY KEY,
    Position_name varchar NOT NULL UNIQUE
);

CREATE TABLE customer (
    ID integer PRIMARY KEY,
    First_name varchar NOT NULL,
    Last_name varchar NOT NULL,
    Phone varchar NOT NULL UNIQUE,
    Email varchar NOT NULL UNIQUE,
    Customer_Address integer NOT NULL REFERENCES address (ID)
);

CREATE TABLE employee (
    ID integer PRIMARY KEY,
    First_name varchar NOT NULL,
    Last_name varchar NOT NULL,
    Phone varchar NOT NULL UNIQUE,
    Email varchar NOT NULL UNIQUE,
    Position integer NOT NULL REFERENCES position(id),
    Employee_Address integer REFERENCES address (ID),
    Start_date date NOT NULL
);

CREATE TABLE brand (
    ID integer PRIMARY KEY,
    Brand_name varchar NOT NULL UNIQUE
);

CREATE TABLE supplier (
    ID integer PRIMARY KEY,
    Supplier_name varchar NOT NULL UNIQUE,
    Supplier_address integer NOT NULL REFERENCES address (ID),
    Phone_number varchar NOT NULL UNIQUE
);

CREATE TABLE category (
    ID integer PRIMARY KEY,
    Name varchar NOT NULL UNIQUE
);

CREATE TABLE product (
    ID integer PRIMARY KEY,
    Product_name varchar NOT NULL,
    Product_price integer NOT NULL CHECK (Product_price > 0),
    Product_brand integer NOT NULL REFERENCES brand (ID),
    Product_category integer NOT NULL REFERENCES category (ID),
    Product_stock integer NOT NULL CHECK (product_stock >= 0) DEFAULT 0,
    UNIQUE (Product_name, Product_brand)
);

CREATE TABLE sell_order (
    Sell_ID integer,
    Product integer NOT NULL REFERENCES product (ID),
    Employee integer NOT NULL REFERENCES employee (ID),
    Customer integer NOT NULL REFERENCES customer (ID),
    Amount integer NOT NULL CHECK (Amount > 0),
    Price integer NOT NULL CHECK (Price > 0),
    Order_date date NOT NULL,
    PRIMARY KEY (Sell_ID, Product)
);

CREATE TABLE purchase_order (
    Purchase_ID integer,
    Product integer NOT NULL REFERENCES product (id),
    Employee integer NOT NULL REFERENCES employee (id),
    Supplier integer NOT NULL REFERENCES supplier (id),
    Amount integer NOT NULL CHECK (Amount > 0),
    Price integer NOT NULL CHECK (Price > 0),
    Purchase_Date date NOT NULL,
    PRIMARY KEY (Purchase_ID, Product)
);

