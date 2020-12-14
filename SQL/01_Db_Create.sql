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

)

CREATE TABLE [Quote] (
  [Id] integer PRIMARY KEY IDENTITY,
  [SubscriberUserProfileId] integer NOT NULL,
  [ProviderUserProfileId] integer NOT NULL,
  [BeginDateTime] datetime NOT NULL,
  [EndDateTime] datetime,

  CONSTRAINT [FK_Subscription_UserProfile_Subscriber] FOREIGN KEY ([SubscriberUserProfileId])
	REFERENCES [UserProfile] ([Id]),

  CONSTRAINT [FK_Subscription_UserProfile_Provider] FOREIGN KEY ([ProviderUserProfileId])
	REFERENCES [UserProfile] ([Id])
)

CREATE TABLE [Season] (
  [Id] integer PRIMARY KEY IDENTITY,
  [Name] nvarchar(50) NOT NULL
)

CREATE TABLE [CharacterSeason] (
  [Id] integer PRIMARY KEY IDENTITY,
  [Title] nvarchar(255) NOT NULL,
  [Content] text NOT NULL,
  [ImageLocation] nvarchar(255),
  [CreateDateTime] datetime NOT NULL,
  [PublishDateTime] datetime,
  [IsApproved] bit NOT NULL,
  [CategoryId] integer NOT NULL,
  [UserProfileId] integer NOT NULL,

  CONSTRAINT [FK_Post_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Category] ([Id]),
  CONSTRAINT [FK_Post_UserProfile] FOREIGN KEY ([UserProfileId]) REFERENCES [UserProfile] ([Id])
)

GO
