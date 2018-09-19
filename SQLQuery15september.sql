select * from Politicians

select * from Countries1

select * from Juntion

select * from Portforlio

--insert into Portforlio(Id,Designition) values(4,'Education')
--insert into Politicians(Name) values('Sardar Patel')
--insert into Politicians(Name) values('Emmanuel Macron')
--insert into Politicians(Name) values('Mandela')
insert into Juntion(Id,PoliticiansId) values(8,1)

--insert into Countries1(Name) values('France')

update Politicians set CountryId = 2 where Id = 11

update Portforlio set Designition = 2 where Id = 11

--set identity_insert Countries OFF

select * from Politicians join Countries1 on Politicians.CountryId = Countries1.Id

select P.Id,P.Name,C.Id,C.Name from Politicians as P join Countries1 as C on P.CountryId = C.Id

select P.Id,P.Name,C.Id,C.Name from Politicians as P right join Countries1 as C on P.CountryId = C.Id

select P.Id,P.Name,C.Id,C.Name from Politicians as P left join Countries1 as C on P.CountryId = C.Id

select P.Id,P.Name,C.Id,C.Name from Politicians as P full join Countries1 as C on P.CountryId = C.Id

select P.Id,P.Name,C.Id,C.Name from Politicians as P join Countries1 as C on P.CountryId = C.Id

select P.Id,P.Name,C.Id,C.Name from Countries1 as C join Politicians as P on C.Id = P.CountryId

select * from Politicians join Countries1 on Politicians.CountryId = Countries1.Id
full join Juntion on Juntion.Id = Politicians.Id 
full join Portforlio on Portforlio.Id = Juntion.PoliticiansId

select * from Politicians join Countries1 on Politicians.CountryId = Countries1.Id
join Juntion on Juntion.Id = Politicians.Id 
join Portforlio on Portforlio.Id = Juntion.PoliticiansId

select * from Politicians right join Countries1 on Politicians.CountryId = Countries1.Id
right join Juntion on Juntion.Id = Politicians.Id 
right join Portforlio on Portforlio.Id = Juntion.PoliticiansId

select * from Politicians left join Countries1 on Politicians.CountryId = Countries1.Id
left join Juntion on Juntion.Id = Politicians.Id 
left join Portforlio on Portforlio.Id = Juntion.PoliticiansId