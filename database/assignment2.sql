-- INSERT DATA INTO THE TABLE
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- UPDATE DATA ON TABLE
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1


-- DELETE DATA FROM TABLE
DELETE FROM account
WHERE account_id = 1;

-- MODIFY RECORD IN THE TABLE
UPDATE
	inventory
SET
	inv_description = 'Do you have 6 kids and like to go offroading? The Hummer gives you a huge interior with an engine to get you out of any muddy or rocky situation.'
WHERE
	inv_id = 10

-- INNER JOIN TWO TABLES
SELECT
	inv_make,
	inv_model,
	classification_name
FROM
	inventory
INNER JOIN classification
	on inv_model = classification_name;

-- REPLACE FUNCTION
UPDATE
	inventory
SET
	inv_image = REPLACE(inv_image, '/images/vehicles/vehicles/', '/images/vehicles/' );
		
-- REPLACE FUNCTION
UPDATE
	inventory
SET
	inv_thumbnail = REPLACE(inv_thumbnail, '/images/vehicles/vehicles/', '/images/vehicles/' );
		
