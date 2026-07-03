SELECT * INTO Dimproduct_Bkup FROM Dimproduct

DROP table Dimproduct_Bkup

select * from Dimproduct_Bkup

UPDATE Dimproduct_Bkup SET COLOR  = 'NO Color'
WHERE color = 'NA'

UPDATE Dimproduct_Bkup SET COLOR  = 'Red High'
WHERE color = 'Red' AND Listprice>3000

UPDATE Dimproduct_Bkup SET COLOR  = 'Red High',Listprice = 1000
WHERE color = 'Red' AND Listprice>3000

UPDATE Dimproduct_Bkup SET COLOR  = 'Red Low',Listprice = 500
WHERE color = 'Red' AND Listprice<3000


UPDATE Dimproduct_Bkup SET Listprice = Listprice * 0.23