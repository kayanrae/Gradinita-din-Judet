create database GradinitaDinJudet
use GradinitaDinJudet

drop table if exists GRADINITA
drop table if exists GRUPA
drop table if exists EDUCATOR
drop table if exists COPIL
drop table if exists SALA

create table GRADINITA(
ID int primary key,
Denumire nvarchar(255) not null,
ProgramScurt bit default 1,
NrClase int not null,
Bucatarie bit default 1
)

CREATE TABLE GRUPA (
ID int primary key,
AnGrupa int not null,
NumeGrupa nvarchar(255) NOT NULL
)

CREATE TABLE EDUCATOR (
ID int primary key,
IdGradinita int not null,
FOREIGN KEY (IdGradinita) REFERENCES GRADINITA(ID),
Nume nvarchar(255) NOT NULL,
IdGrupa int not null,
FOREIGN KEY (IdGrupa) REFERENCES GRUPA(ID),
Salariu DECIMAL(8, 2) NOT NULL,
Vechime int not null,
Activ bit
)

CREATE TABLE SALA (
ID int primary key,
IdGradinita int not null,
FOREIGN KEY (IdGradinita) REFERENCES GRADINITA(ID),
Locatie nvarchar(255) NOT NULL,
NrPaturi int not null,
IdGrupa int not null,
FOREIGN KEY (IdGrupa) REFERENCES GRUPA(ID)
)

CREATE TABLE COPIL (
ID int primary key,
IdGradinita int not null,
FOREIGN KEY (IdGradinita) REFERENCES GRADINITA(ID),
IdGrupa int not null,
FOREIGN KEY (IdGrupa) REFERENCES GRUPA(ID),
Nume nvarchar(255) NOT NULL,
DataNasterii date not null,
Varsta int not null, 
DataInmatriculare date not null,
ProgramScurt bit default 1,
NumeParinte nvarchar(255) NOT NULL,
NrTelefon nvarchar(20) NOT NULL,
Activ bit
)

INSERT INTO GRADINITA (ID, Denumire, NrClase, Bucatarie) VALUES
(1,'Gradinita din Judet', 5, 1)

INSERT INTO GRUPA (ID, AnGrupa, NumeGrupa) VALUES 
(1, 2023, 'Grupa1'),
(2, 2023, 'Grupa2'),
(3, 2023, 'Grupa3'),
(4, 2023, 'Grupa4'),
(5, 2023, 'Grupa5')

INSERT INTO EDUCATOR (ID, IdGradinita, Nume, IdGrupa, Salariu, Vechime, Activ) VALUES 
(1, 1, 'Radulescu', 1, 2345.00, 15, 1),
(2, 1, 'Cristianovich', 1, 2213.00, 25, 1),
(3, 1, 'Soare', 1, 2233.00, 35, 1),
(4, 1, 'Visan', 1, 2213.00, 20, 1),
(5, 1, 'Tanita', 1, 2345.00, 25, 1)

INSERT INTO SALA (ID, IdGradinita, Locatie, NrPaturi, IdGrupa) VALUES 
(1, 1, 'Sala1', 10, 1),
(2, 1, 'Sala2', 10, 2),
(3, 1, 'Sala3', 10, 3),
(4, 1, 'Sala4', 10, 4),
(5, 1, 'Sala5', 10, 5)

INSERT INTO COPIL (ID, IdGradinita, IdGrupa, Nume, DataNasterii, Varsta, DataInmatriculare, ProgramScurt, NumeParinte, NrTelefon, Activ) VALUES
(1, 1, 4, 'Andrei Popescu', '2018-01-14', 5, '2020-06-01', 1, 'Ana Popescu', '0734567890', 1),
(2, 1, 5, 'Maria Ionescu', '2017-07-05', 6, '2019-06-01', 0, 'Ion Ionescu', '0734567890', 1),
(3, 1, 3, 'Alexandru Radu', '2019-11-30', 4, '2021-06-01', 1, 'Maria Radu', '0734567890', 1),
(4, 1, 1, 'Elena Stanescu', '2021-04-09', 2, '2023-06-01', 0, 'Andrei Stanescu', '0734567890', 1),
(5, 1, 4, 'Ionescu Dumitru', '2018-03-18', 5, '2020-06-01', 1, 'Elena Dumitru', '0734567890', 1),
(6, 1, 5, 'Ana Stoica', '2017-06-07', 6, '2019-06-01', 0, ' Florin Stoica', '0734567890', 1),
(7, 1, 3, 'Gabriel Petrescu', '2019-07-22', 6, '2021-06-01', 1, 'Gabriela Petrescu', '0734567890', 1),
(8, 1, 1, 'Sofia Vasilescu', '2021-08-12', 2, '2023-06-01', 0, 'Alexandru Vasilescu', '0734567890', 1),
(9, 1, 4, 'Matei Andreescu', '2018-02-23', 5, '2020-06-01', 1, 'Ioana Andreescu', '0734567890', 1),
(10, 1, 1, 'Ioana Mihai', '2021-05-10', 2, '2023-06-01', 0, 'Mihai Mihai', '0734567890', 1),
(11, 1, 5, 'David Popa', '2017-10-03', 6, '2019-06-01', 1, 'Raluca Popa', '0734567890', 1),
(12, 1, 3, 'Raluca Gheorghe', '2019-12-20', 4, '2021-06-01', 0, 'Gabriel Gheorghe', '0734567890', 1),
(13, 1, 4, 'Florin Popovici', '2018-07-28', 5, '2020-06-01', 1, 'Adrian Popovici', '0734567890', 1),
(14, 1, 1, 'Andreea Stoian', '2021-04-13', 2, '2023-06-01', 1, 'Adrian Popovici', '0734567890', 1),
(15, 1, 1, 'Elena Voicu', '2021-07-08', 2, '2023-06-01', 0, 'Sofia Voicu', '0734567890', 1),
(16, 1, 5, 'Andrei Dumitrescu', '2017-03-07', 6, '2019-06-01', 1, 'Catalin Dumitrescu', '0734567890', 1),
(17, 1, 4, 'Ana Maria Radulescu', '2018-09-17', 5, '2020-06-01', 0, 'Ana Maria Rădulescu', '0734567890', 1),
(18, 1, 5, 'Mihai Stefanescu', '2017-11-09', 6, '2019-06-01', 1, 'Ion Ștefănescu', '0734567890', 1),
(19, 1, 1, 'Ioana Dumitru', '2021-06-15', 2, '2023-06-01', 0, 'Maria Dumitru', '0734567890', 1),
(20, 1, 5, 'Vasile Pop', '2017-12-05', 6, '2019-06-01', 1, 'Vasile Pop', '0734567890', 1),
(21, 1, 3, 'Elena Tanase', '2019-12-17', 4, '2021-06-01', 0, 'Elena Tănase', '0734567890', 1),
(22, 1, 3, 'Ion Cojocaru', '2020-08-29', 3, '2022-06-01', 1, ' Florin Cojocaru', '0734567890', 1),
(23, 1, 1, 'Maria Barbu', '2021-01-26', 2, '2023-06-01', 0, 'Alexandra Barbu', '0734567890', 1),
(24, 1, 4, 'Florin Iacob ', '2018-07-10', 5, '2020-06-01', 1, 'Florin Iacob', '0734567890', 1),
(25, 1, 1, 'Alexandra Stan', '2021-03-12', 2, '2023-06-01', 0, 'Corneliu Stan', '0734567890', 1),
(26, 1, 5, 'Andrei Munteanu', '2017-11-21', 6, '2019-06-01', 1, 'Ana Munteanu', '0734567890', 1),
(27, 1, 1, 'Ana Popovici ', '2021-02-14', 2, '2023-06-01', 0, 'Gabriel Popovici', '0734567890', 1),
(28, 1, 3, 'Stefan Preda', '2019-10-09', 4, '2021-06-01', 1, 'Mihaela Preda', '0734567890', 1),
(29, 1, 2, 'Gabriela Davidescu', '2020-05-25', 3, '2022-06-01', 0, 'Valentin Davidescu', '0734567890', 1),
(30, 1, 5, 'Adrian Costache', '2017-09-05', 6, '2019-06-01', 1, 'Elena Costache', '0734567890', 1),
(31, 1, 4, 'Ana Maria Stoian ', '2018-12-03', 5, '2020-06-01', 0, 'Adrian Stoian', '0734567890', 1),
(32, 1, 5, 'Mihai Dragomir', ' 2017-04-02', 6, '2019-06-01', 1, 'Elena Dragomir', '0734567890', 1),
(33, 1, 3, 'Elena Georgescu', '2019-06-28', 3, '2021-06-01', 0, 'Adrian Georgescu', '0734567890', 1),
(34, 1, 1, 'Alexandru Enache', '2021-11-19', 2, '2023-06-01', 1, 'Mihaela Enache', '0734567890', 1),
(35, 1, 2, 'Ana Luca', '2020-03-09', 3, '2022-06-01', 0, 'Gabriel Luca', '0734567890', 1),
(36, 1, 4, 'Ionut Ionescu ', '2018-08-07', 5, '2020-06-01', 1, 'Ion Ionescu', '0734567890', 1),
(37, 1, 1, 'Maria Tudor', '2021-07-15', 2, '2023-06-01', 0, 'Elena Tudor', '0734567890', 1),
(38, 1, 5, 'Catalin Florea', '2017-05-19', 6, '2019-06-01', 1, 'Ana Florea', '0734567890', 1),
(39, 1, 3, 'Sofia Radulescu', '2019-09-04', 4, '2021-06-01', 0, 'Vasile Radulescu', '0734567890', 1),
(40, 1, 1, 'Gabriel Dima', '2021-02-01', 2, '2023-06-01', 1, 'Elena Dima', '0734567890', 1),
(41, 1, 5, 'Raluca Neagu', '2017-11-07', 6, '2019-06-01', 0, 'Ion Neagu', '0734567890', 1),
(42, 1, 2, 'Andrei Popa', '2020-04-30', 3, '2022-06-01', 1, 'Gabriela Popa', '0734567890', 1),
(43, 1, 3, 'Ioana Muresan', '2019-01-18', 4, '2021-06-01', 0, 'Florin Muresan', '0734567890', 1),
(44, 1, 1, 'Mihai Voinea', '2021-03-22', 2, '2023-06-01', 1, 'Elena Voinea', '0734567890', 1),
(45, 1, 5, 'Ana Muntean', '2017-05-08', 6, '2019-06-01', 0, 'Adrian Muntean', '0734567890', 1),
(46, 1, 1, 'Gabriel Stanescu', '2021-09-03', 2, '2023-06-01', 1, 'Andrei Stanescu', '0734567890', 1),
(47, 1, 4, 'Andreea Stoian', '2018-07-11', 5, '2020-06-01', 0, ' Florin Stoian', '0734567890', 1),
(48, 1, 3, 'Adrian Vasilache', '2019-05-10', 4, '2021-06-01', 1, 'Elena Vasilache', '0734567890', 1),
(49, 1, 4, 'Elena Mihaila', '2018-07-11', 5, '2020-06-01', 0, 'Ion Mihaila', '0734567890', 1),
(50, 1, 1, 'Ionut Predescu', '2021-04-13', 2, '2023-06-01', 1, 'Gabriela Predescu', '0734567890', 1)

use GradinitaDinJudet

SELECT C.*
FROM COPIL C
JOIN (
    SELECT IdGrupa, MIN(Varsta) AS MinVarsta
    FROM COPIL
    GROUP BY IdGrupa
) AS Minime ON C.IdGrupa = Minime.IdGrupa
WHERE C.Varsta = Minime.MinVarsta AND C.Varsta <= 2

CREATE VIEW RaportGradinita AS
SELECT
    E.Nume AS 'Nume Educator',
    C.Nume AS 'Nume Elev',
    C.DataNasterii AS 'Data Nastere',
    DATEDIFF(YEAR, C.DataNasterii, GETDATE()) AS 'Varsta',
    CASE WHEN C.ProgramScurt = 1 THEN 'Program Scurt' ELSE 'Program Lung' END AS 'Program',
    G.NumeGrupa AS 'Nume Grupa'
FROM GRUPA G
LEFT JOIN COPIL C ON C.IdGrupa = G.ID
LEFT JOIN EDUCATOR E ON E.IdGradinita = C.IdGradinita AND E.IdGrupa = C.IdGrupa

ALTER VIEW RaportGradinita AS
SELECT
    E.Nume AS 'Nume Educator',
    C.Nume AS 'Nume Elev',
    C.DataNasterii AS 'Data Nastere',
    DATEDIFF(YEAR, C.DataNasterii, GETDATE()) AS 'Varsta',
    CASE WHEN C.ProgramScurt = 1 THEN 'Program Scurt' ELSE 'Program Lung' END AS 'Program',
    G.NumeGrupa AS 'Nume Grupa'
FROM GRUPA G
LEFT JOIN COPIL C ON C.IdGrupa = G.ID
LEFT JOIN EDUCATOR E ON E.IdGradinita = C.IdGradinita AND E.IdGrupa = C.IdGrupa

SELECT * FROM RaportGradinita

USE GradinitaDinJudet
GO

IF OBJECT_ID('RaportGrupeMici', 'P') IS NOT NULL
    DROP PROCEDURE RaportGrupeMici
GO

CREATE OR ALTER PROCEDURE RaportGrupeMici
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @VarstaCopil INT = 3 -- Varsta copilului nou

    SELECT
        G.AnGrupa,
        G.NumeGrupa AS 'Denumire Grupa',
        E.Nume AS 'Nume Profesor',
        COUNT(C.ID) AS 'Numar elevi',
        G.ID AS 'Clasa',
        S.NrPaturi AS 'Numar Paturi',
        S.NrPaturi - COUNT(CASE WHEN C.ProgramScurt = 0 THEN 1 END) AS 'Numar Paturi Disponibile'
    FROM GRUPA G
    JOIN EDUCATOR E ON E.IdGrupa = G.ID
    JOIN COPIL C ON C.IdGrupa = G.ID
    JOIN SALA S ON S.IdGrupa = G.ID
    WHERE G.AnGrupa = YEAR(GETDATE()) - @VarstaCopil -- Grupa de varsta specificata
    GROUP BY G.AnGrupa, G.NumeGrupa, E.Nume, G.ID, S.NrPaturi
END
GO
exec RaportGrupeMici


CREATE OR ALTER PROCEDURE AdaugaElevInGrupa    
AS
BEGIN
DECLARE @IdElev INT = 51,
@IdGrupa INT = 2
SET NOCOUNT ON
INSERT INTO COPIL (ID, IdGradinita, IdGrupa, Nume, DataNasterii, Varsta, DataInmatriculare, ProgramScurt, NumeParinte, NrTelefon, Activ) VALUES
(@IdElev, 1, @IdGrupa, 'Matei Mihai', '2020-01-01', 3, '2022-06-01', 0, 'Cristian Mihai', '0734567890', 1)
  
END
GO

EXEC AdaugaElevInGrupa

select * from COPIL