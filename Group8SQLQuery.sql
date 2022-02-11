--Library Database that contains information of Books, Authors, User and checkout history data.

-- User table contains ID (User_ID),FNAME,LNAME and user password for login.
CREATE TABLE LIBRARY_USER(
	User_ID VARCHAR(20) NOT NULL PRIMARY KEY,
	User_PW INT NOT NULL,
    FName VARCHAR(20) NOT NULL,
    LName VARCHAR(20) NOT NULL
);

-- Inserts ten users into the users table
INSERT INTO LIBRARY_USER(User_ID, User_PW, FName, LName)
VALUES
('james123',123,'James', 'Northup'),
('jin123',456,'Jin','Park'),
('alice123',789,'Alice','Smith'),
('bob123',124,'Bob','Johnson'),
('carol123',125,'Carol','Williams'),
('david123',126,'David','Brown'),
('john123',127,'Jonh','Miller'),
('robert123',128,'Robert','Jones'),
('mary123',129,'Mary','Davis'),
('jennifer123',120,'Jennifer','Anderson');

-- Authors table contains the Author ID (Primary key), FName, LName
CREATE TABLE Author(
	Author_ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
    FName VARCHAR(20) NOT NULL,
    LName VARCHAR(20) NOT NULL,
    
);

-- Inserts twenty-two Authors correlating with book inventory in book table. 
INSERT INTO Author(FName, LName)
VALUES
('C.S.','Lewis'),
('H. Rider','	Haggard'	 ),
('Carlo',	'Collodi'	 ),
('Dan','Brown'	 ),
('J.K','Rowling'	 ),
('Paulo','Coelho'	 ),
('J.D'	,'Salinger'	 ),
('Robert'	,'Waller'	),
('Lew'	,'Wallace'	 ),
('Louise'	,'Hay'	 ),
('Gabriel'	,'Marquez'	 ),
('Vladimir','Nabokov'	 ),
('Johanna'	,'Spyri'	 ),
('Benjamin'	,'Spock'	 ),
('Lucy'	,'Montogomery'	 ),
('Anne','Sewell'	 ),
('Umberto'	,'Eco'	 ),
('Jack'	,'Higgins'	 ),
('Richard'	,'Adams'	 ),
('Shere'	,'Hite'	 ),
('E.B.'	,'White'	 ),
('J.P.'	,	'Donleavy'	 );
   

   -- Books table contains ISBN (Primary key), Author_ID, Title, Year , Author_ID (Foreign key)
    CREATE TABLE BOOKS(
		ISBN BIGINT NOT NULL,
        Author_ID INT NOT NULL,
        Title VARCHAR(80) NOT NULL,
        Year INT ,
        PRIMARY KEY(ISBN),
        FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
    );

	--Inserts twenty-seven entries into book table
    INSERT INTO BOOKS(ISBN, Author_ID, Title, Year)
    VALUES
(	9780064404990,	1		,'The Lion, the Witch and the Wardrobe' , 		  1950),
(	9781925110135,	2		,'She: A History of Adventure' , 		 1887),
(	9780520246867,	3		,'The Adventures of Pinocchio (Le avventure di Pinocchio)' , 		 1881),
(	9780307474278,	4		,'The Da Vinci Code' , 		 2003),
(	9781338716535,	5		,'Harry Potter and the Chamber of Secrets' , 		 1998),
(	9781338299168,	5		,'Harry Potter and the Prisoner of Azkaban' , 		 1999),
(	9780439139595,	5		,'Harry Potter and the Goblet of Fire' , 		 2000),
(	9780439358071,	5		,'Harry Potter and the Order of the Phoenix' , 		 2003),
(	9780439785969,	5		,'Harry Potter and the Half-Blood Prince' , 		 2005),
(	9780545139700,	5		,'Harry Potter and the Deathly Hallows' , 		 2007),
(	9780062315007,	6		,'The Alchemist (O Alquimista)' , 		 1988),
(	9780316769174,	7		,'The Catcher in the Rye' , 		 1951),
(	9780446516525,	8		,'The Bridges of Madison County' , 		 1992),
(	9781533185518,	9		,'Ben-Hur: A Tale of the Christ' , 		 1880),
(	9780937611012,	10		,'You Can Heal Your Life' , 		1984),
(	9780060883287,	11		,'One Hundred Years of Solitude (Cien años de soledad)' , 		1967),
(	9780679723165,	12		,'Lolita' , 		1955),
(	9781693245534,	13		,'Heidi' , 		1880),
(	9784871879699,	14		,'The Common Sense Book of Baby and Child Care' , 		 1946),
(	9781503214132,	15		,'Anne of Green Gables' , 		 1908),
(	9781949982220,	16		,'Black Beauty' , 		 1877),
(	9780544176560,	17		,'The Name of the Rose (Il Nome della Rosa)' , 		 1980),
(	9780425177181,	18		,'The Eagle Has Landed' , 		 1975),
(	9780743277709,	19		,'Watership Down' , 		 1972),
(	9781583225691,	20		,'The Hite Report' , 		 1976),
(	9780061232916,	21		,'Charlottes Web' , 		 1952),
(	9780802144669,	22		,'The Ginger Man' , 		 1955);

-- Checkout table containing the Checkout_ID (Primary key), User_ID (Foreign key), Checkout_Date, 
CREATE TABLE Checkout_Log(
	Checkout_ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
    User_ID VARCHAR(20) NOT NULL,
    ISBN BIGINT NOT NULL,
    Checkout_Date date NOT NULL ,
    Returned_Date date,
       
    FOREIGN KEY (User_ID) REFERENCES LIBRARY_USER(User_ID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Inserts fifteen entries into checkout table
INSERT INTO CHECKOUT_LOG(User_ID, ISBN, Checkout_Date, Returned_Date)
VALUES
('alice123',9780544176560,'2020-6-11','2020-6-15'),
('alice123',9780544176560,'2019.3.20','2019.3.23'),
('jin123',9780439358071,'2018-7-21',NULL)  ,  
('alice123',9780520246867,'2019-3-23','2019-3-28'),
('bob123',9780544176560,'2020-3-23','2020-3-28'),
('james123',9780064404990,'2021-1-2','2021-1-16'),
('john123',9780307474278,'2020-5-6','2020-5-28'),
('carol123',9780545139700,'2020-5-7','2020-6-15'),
('mary123',9780439785969,'2019-12-20','2019-12-22'),
('david123',9780439358071,'2018-8-2',NULL)  ,  
('bob123',9781338716535,'2019-3-22','2019-3-28'),
('mary123',9780425177181,'2020-1-23','2021-3-28'),
('bob123',9781583225691,'2021-1-2','2021-1-16'),
('david123',9780545139700,'2020-2-6','2020-2-28'),
('alice123',9780062315007,'2020-6-11','2020-6-15');
go

--Trigger denies checkout of any book that is already checked out, or if the user already has a checkout that is not returned.
CREATE TRIGGER Checkout_Denied
ON Checkout_log
FOR INSERT 
AS 
	DECLARE @ID varchar(20)
	SELECT @ID=user_ID FROM INSERTED
	DECLARE @ISBN bigINT
	SELECT @ISBN=ISBN FROM INSERTED
	IF(EXISTS (Select user_id From Checkout_log where (Returned_Date is null and @ID != User_ID and @ISBN=ISBN) or (1<(Select COUNT(*) From (Select * FROM CHECKOUT_LOG WHERE  USER_ID = @ID and Returned_Date is null ) AS D))))
		Begin
		RAISERROR ('LATE BOOKS', 16, 1)
		ROLLBACK TRANSACTION
		End
go

-- If book does not exits in stock denies checkout.
CREATE TRIGGER Not_In_Stock
ON Checkout_log
FOR INSERT 
AS 
	DECLARE @IS BIGINT
	SELECT @IS=ISBN FROM INSERTED
	IF(@IS not in (Select ISBN From Checkout_log where Returned_Date is not null))
		Begin
		RAISERROR ('Book is out of stock', 16, 1)
		ROLLBACK TRANSACTION
		End
go

-- Creates a view which shows all checkout books and number of days they have been checkout for.
CREATE VIEW Books_Out AS
SELECT B.Title as Title,C.Checkout_Date as [Check out Date], DATEDIFF(d,C.Checkout_Date, GETDATE()) as [Days since checkout], b.ISBN
FROM Checkout_Log as C
inner join books as B
On C.ISBN=B.ISBN
WHERE Returned_Date is null;
go
-- Creates a view which shows all books in stock
CREATE VIEW Books_In AS
SELECT B.Title as Title,C.Checkout_Date as [Check out Date],b.ISBN
FROM Checkout_Log as C
inner join books as B
On C.ISBN=B.ISBN
WHERE Returned_Date is not null;
go

/* Function that takes  in characters and returns a table that contains information of any title or authors name containing similar characters*/
Create FUNCTION RelatedBooks(@REL VARCHAR(20))
RETURNS @Result TABLE (Title varchar(80),FName varchar(20),LNAME varchar(20))
AS
BEGIN
	Insert into @Result
	Select B.Title,A.FName,A.LNAME From BOOKS as B inner join Author as A On B.Author_ID=A.Author_ID where B.title like '%'+@REL+'%' or  A.FName like '%'+@REL+'%' or  A.LName like '%'+@REL+'%'
	RETURN
END
GO





