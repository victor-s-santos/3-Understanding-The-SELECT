-- retrieve all records from table
SELECT * FROM fastfoodnutritionmenu;

-- retrieve all records that match the condition
SELECT * FROM fastfoodnutritionmenu WHERE "Calories" > 800;

-- ordering the previous SELECT
SELECT * FROM fastfoodnutritionmenu WHERE "Calories" > 800 ORDER BY "Calories" DESC;


-- retrieve the number of itens which respect the given condition for each company
SELECT "Company", COUNT("Item") FROM fastfoodnutritionmenu WHERE "Calories" > 800 GROUP BY "Company";
