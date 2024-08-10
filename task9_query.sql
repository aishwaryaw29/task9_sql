create table item (
	id varchar (120),
	weight double precision,
	fat varchar(120),
	type varchar(120),
	price double precision,
	outlet varchar(120)
)

select * from item

copy item from 'E:\ARC\SQL\day16\task9_data.csv' delimiter ',' csv header


----REGEX EXAMPLES

--1) second letter is R or C followed by any letter and any 2 digits
	
select id from item where id ~* '^[a-z](r|c)[a-z][0-9]{2}$'
	

--2) third letter is L followed by both digits are either 5 or 8 or 9

select id from item where id ~* '^[a-z]{2}L(5|8|9){2}$'

	
--3) first & third letter are D followed by any 2 digits

select id from item where id ~* '^D[a-z]D[0-9]{2}$'


--4) first letter is F followed by any 2 letters and both digits 1 and 1

select id from item where id ~* '^F[a-z]{2}11$'


--5) second & third letter is C followed by both digits either 3 or 4 or 0

select id from item where id ~* '^[a-z]CC(3|4|0){2}$'


--6) third letter is either Q or N followed by both digits either 2 or 7 or 6

select id from item where id ~* '^[a-z]{2}(q|n)(2|7|6){2}$'