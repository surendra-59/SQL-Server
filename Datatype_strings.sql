create table tblTxtDatatypes1(
	employeename char,
	city varchar
)

insert into tblTxtDatatypes1(employeename, city) values('a','x')

-- char is fixed length and varchar is variable length

create table tblTxtDatatypes2(
	employeename char(5),
	city varchar(5)
)

insert into tblTxtDatatypes2(employeename,city) values('abc','abc')

select * from tblTxtDatatypes2

-- 'abc  ' char allocate whole 5
-- 'abc'	it only allocate particular storage that number of char you have.


-- upper limit of char and varchar
create table tblTxtDatatypes3(
	employeename char(8000),
	city varchar(8000)
)

-- max size is 8000 and more than this

create table tblTxtDatatypes4(
	employeename char(8000),
	city varchar(max)
)

-- n denotes unicode here. Difference about char and nchar is 
-- char takes 1 bytes whereas nchar takes double the size
create table tblTxtDatatypes5(
	employeename nchar(4000), -- max is 4000 beccause it takes double the size
	city nvarchar(4000),
	city2 nvarchar(max)
)


