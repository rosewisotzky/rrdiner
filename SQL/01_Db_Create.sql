USE [master]

IF db_id('RRDiner') IS NULl
  CREATE DATABASE [RRDiner]
GO

USE [RRDiner]
GO


DROP TABLE IF EXISTS [Character];
DROP TABLE IF EXISTS [Quote];
DROP TABLE IF EXISTS [Season];
DROP TABLE IF EXISTS [CharacterSeason];
GO



CREATE TABLE [Character] (
  [Id] integer PRIMARY KEY IDENTITY,
  [FirstName] nvarchar(50) NOT NULL,
  [LastName] nvarchar(50) NOT NULL,
  [ImageLocation] nvarchar(255),
  [Bio] nvarchar(500)
)

CREATE TABLE [Season] (
  [Id] integer PRIMARY KEY IDENTITY,
  [Name] nvarchar(50) NOT NULL
)
CREATE TABLE [CharacterSeason] (
  [Id] integer PRIMARY KEY IDENTITY,
  [CharacterId] integer NOT NULL,
  [SeasonId] integer NOT NULL

  CONSTRAINT [FK_CharacterSeason_Character] FOREIGN KEY ([CharacterId]) REFERENCES [Character] ([Id]),
  CONSTRAINT [FK_CharacterSeason_Season] FOREIGN KEY ([SeasonId]) REFERENCES [Season] ([Id])
)
CREATE TABLE [Quote] (
  [Id] integer PRIMARY KEY IDENTITY,
  [CharacterSeasonId] integer NOT NULL,
  [Content] nvarchar(50) NOT NULL,
  [SubmitDateTime] datetime NOT NULL
  

  CONSTRAINT [FK_Quote_CharacterSeason] FOREIGN KEY ([CharacterSeasonId])
	REFERENCES [CharacterSeason] ([Id])
)


GO
