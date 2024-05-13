CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
);

CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY NOT NULL,
	category VARCHAR NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY NOT NULL,
	subcategory VARCHAR NOT NULL
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal DECIMAL(8, 1) NOT NULL,
	pledged DECIMAL(8, 1) NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(4) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);