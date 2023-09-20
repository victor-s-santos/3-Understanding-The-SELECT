-- retrieve the company name and calories from nutritional_info and company
select c.name, ni."Calories" from nutritional_info ni inner join company c on c.id = ni.id_company;