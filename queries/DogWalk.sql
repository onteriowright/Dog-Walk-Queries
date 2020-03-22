create table neighborhood (
id integer not null,
[name] varchar(55) not null
);

CREATE TABLE [Owner] (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
[Address] VARCHAR(55) NOT NULL,
NeighborhoodId INTEGER NOT NULL,
Phone VARCHAR(55) NOT NULL,
CONSTRAINT FK_Dog_Neighborhood FOREIGN KEY(NeighborhoodId) REFERENCES Neighborhood(Id)
);

CREATE TABLE Walker (
Id INTEGER NOT NULL,
[Name] VARCHAR(55) NOT NULL,
NeighborhoodId INTEGER NOT NULL,
CONSTRAINT FK_Walker_Neighborhood FOREIGN KEY(Neighborhood) REFERENCES NeighborhoodId(Id)
);


CREATE TABLE Dog (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
OwnerId INTEGER NOT NULL,
Breed VARCHAR(55) NOT NULL,
Notes VARCHAR(255) NOT NULL,
CONSTRAINT FK_Dog_Owner FOREIGN KEY(OwnerId) REFERENCES [Owner](Id)
);

CREATE TABLE Walks (
Id INTERGER NOT NULL PRIMARY KEY IDENTITY,
[Date] DATETIME NOT NULL,
WalkerId INTERGER NOT NULL,
DogId INTERGER NOT NULL,
CONSTRAINT FK_Walks_Dog FOREIGN KEY(DOgId) REFERENCES Dog(Id),
CONSTRAINT FK_Walks_Walker FOREIGN KEY(WalkerId) REFERENCES Walker(Id)
);

INSERT INTO Neighborhood ([Name]) VALUES ('Houston');
INSERT INTO Neighborhood ([Name]) VALUES ('Dallas');
INSERT INTO Neighborhood ([Name]) VALUES ('Nashville');

INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Onterio', 1);
INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Danyeal', 2);

INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Mike', '8789 W 89th st', 1, '222-178-2222');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Tone', '8584 S 9th st', 2, '552-878-5223');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Jerry', '2289 N 819th st', 3, '222-128-2112');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Jimmy', '1289 E 8th st', 4, '211-132-2111');

INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Duece', 1, 'Pitbull', 'Great Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Dutchess', 2, 'Pitbull', 'Great Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Becky', 1, 'Pitbull', 'Chill Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Duke', 2, 'Pitbull', 'Hyper Dog');


INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('03/17/2020', 30, 1, 1);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('03/19/2020', 30, 1, 1);