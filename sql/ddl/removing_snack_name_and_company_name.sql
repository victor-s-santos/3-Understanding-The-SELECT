--removing snack_name and company_name from nutritional_info
ALTER TABLE nutritional_info
DROP COLUMN company_name;
ALTER TABLE nutritional_info
DROP COLUMN snack_name;