CREATE DATABASE CoffeeSuppliers_DB
GO
USE CoffeeSuppliers_DB
GO
CREATE TABLE UreticiUlkeler
(
ID int IDENTITY(1001,1),
Isim nvarchar(150) NOT NULL,
CONSTRAINT pk_ureticiulkeler PRIMARY KEY(ID)
)
GO
CREATE TABLE Saticilar
(
ID int IDENTITY(10001,1),
Isim nvarchar(150) NOT NULL,
CONSTRAINT pk_saticilar PRIMARY KEY(ID)
)
GO 
CREATE TABLE Alicilar
(
ID int IDENTITY(10100,1),
Isim nvarchar(150) NOT NULL,
GorüsülenKisi nvarchar(150) NOT NULL,
Telefon int NOT NULL,
Sehir nvarchar(150) NOT NULL,
Adres nvarchar(150) NOT NULL,
CONSTRAINT pk_alicilar PRIMARY KEY(ID)
)
GO
CREATE TABLE Kahveler
(
ID int IDENTITY(1,1),
Isim nvarchar(150) NOT NULL,
Satici int NOT NULL,
UreticiUlke int NOT NULL,
Fiyat money NOT NULL,
Stok int NOT NULL,
Satistami bit NOT NULL,
CONSTRAINT pk_kahveler PRIMARY KEY(ID),
CONSTRAINT fk_kahveureticiulke FOREIGN KEY(UreticiUlke) REFERENCES UreticiUlkeler(ID),
CONSTRAINT fk_kahvesaticilar FOREIGN KEY(Satici) REFERENCES Saticilar(ID),
)
GO
CREATE TABLE Satislar
(
ID int IDENTITY(5000,1),
KahveID int,
AliciID int,
CONSTRAINT pk_satislar PRIMARY KEY(ID),
CONSTRAINT fk_satiskahve FOREIGN KEY(KahveID) REFERENCES Kahveler(ID),
CONSTRAINT fk_satisalici FOREIGN KEY(AliciID) REFERENCES Alicilar(ID)
)