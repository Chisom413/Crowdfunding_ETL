-- crowdfunding_db_schema.sql

-- Category table
CREATE TABLE Category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Campaign table
CREATE TABLE Campaign (
    cf_id VARCHAR(255) PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(255) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    launch_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
