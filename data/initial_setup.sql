-- SET UP CATEGORIES

--PARENT CATEGORIES
INSERT INTO category (description, parent_category_id) 
SELECT 'Bills', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Bills' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Day to Day', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Day to Day' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Maintenance', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Maintenance' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Fun Spending', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Fun Spending' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Clothing', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Clothing' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Health', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Health' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Haircuts', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Haircuts' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Non Monthly', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Non Monthly' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Goals', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Goals' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Quality of Life', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Quality of Life' AND parent_category_id IS NULL);

INSERT INTO category (description, parent_category_id) 
SELECT 'Credit Card Payments', null 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Credit Card Payments' AND parent_category_id IS NULL);


--CHILD CATEGORIES
INSERT INTO category (description, parent_category_id) 
SELECT 'Mortgage', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Mortgage' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Trailer', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Trailer' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Car Payment', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Car Payment' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Electric', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Electric' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Water', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Water' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Natural Gas', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Natural Gas' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Internet', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Internet' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Cell Phone', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Cell Phone' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Child Care', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Child Care' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'RRSP/RESP', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'RRSP/RESP' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Line of Credit', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Line of Credit' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Insurance', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Insurance' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Entertainment', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Entertainment' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Cleaner', 1 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Cleaner' AND parent_category_id = 1);

INSERT INTO category (description, parent_category_id) 
SELECT 'Groceries', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Groceries' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Costco', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Costco' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Amazon', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Amazon' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Drugs/Alcohol', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Drugs/Alcohol' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Snacks', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Snacks' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Gas', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Gas' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Eating Out', 2 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Eating Out' AND parent_category_id = 2);

INSERT INTO category (description, parent_category_id) 
SELECT 'Lawn and Garden', 3 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Lawn and Garden' AND parent_category_id = 3);

INSERT INTO category (description, parent_category_id) 
SELECT 'Home', 3 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Home' AND parent_category_id = 3);

INSERT INTO category (description, parent_category_id) 
SELECT 'Car', 3 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Car' AND parent_category_id = 3);

INSERT INTO category (description, parent_category_id) 
SELECT 'Trailer', 3 
WHERE NOT EXISTS (SELECT 1 FROM category WHERE description = 'Trailer' AND parent_category_id = 3);


--entry_user TABLE
INSERT INTO entry_user (first_name, last_name) 
SELECT 'Scott', 'McLellan' 
WHERE NOT EXISTS (SELECT 1 FROM entry_user WHERE first_name = 'Scott' AND last_name = 'McLellan');

INSERT INTO entry_user (first_name, last_name) 
SELECT 'Trish', 'McLellan' 
WHERE NOT EXISTS (SELECT 1 FROM entry_user WHERE first_name = 'Trish' AND last_name = 'McLellan');

INSERT INTO entry_user (first_name, last_name) 
SELECT 'Sam', 'McLellan' 
WHERE NOT EXISTS (SELECT 1 FROM entry_user WHERE first_name = 'Sam' AND last_name = 'McLellan');

INSERT INTO entry_user (first_name, last_name) 
SELECT 'Lewis', 'McLellan' 
WHERE NOT EXISTS (SELECT 1 FROM entry_user WHERE first_name = 'Lewis' AND last_name = 'McLellan');



