
-- Datatype
/*
	bigint storage 8 bytes range 2^63 to 2^63-1
	int 4 bytes		2^31 to 2^31-1
	smallint 2 bytes		2^15 to 2^15-1
	tinyint 1 byte	0 to 255		2^0-1 to 2^8-1
*/


CREATE TABLE tblIntDataTypes(
	id1 tinyint,
	id2 smallint,
	id3 int,
	id4 bigint
)

insert into tblIntDataTypes(id1) values(0)

insert into tblIntDataTypes(id1) values(256)	--error
insert into tblIntDataTypes(id1) values(-8)		--error



create table ApproNumericDataTypes(
	price decimal(19,2), -- precision 19, scale 2 
	cost numeric
)

-- select ApproNumericDataTypes and press alt + F1
-- approximate_datatypes.png inside picture
-- datetype_datatype.png 