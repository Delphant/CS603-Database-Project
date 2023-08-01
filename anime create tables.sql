/*Trevor Neal Anime List Create Tables*/

USE Anime_list
GO

CREATE TABLE UserInfo (
	UserID 				Int 			NOT NULL IDENTITY(1,1),
	Username			Char(25)		NOT NULL,
	FollowCount 		Int				NULL,
	DaysWatched 		Float			NULL, 
	CONSTRAINT 	UserPK				PRIMARY KEY(UserID),
	);

CREATE TABLE UserAnime (
	Anime 				Char(50) 		NOT NULL ,
	IsFavorite			Bit		 		NULL,
	Progress 			Char(15)		NULL,
	UserScore			Int				NULL,
	UserID 				Int				NOT NULL IDENTITY(1,1),
	CONSTRAINT 	AnimePK			PRIMARY KEY(Anime, UserID),
	CONSTRAINT 	UserFK		FOREIGN KEY(UserID)
						REFERENCES UserInfo(UserID)
 							ON UPDATE NO ACTION
							ON DELETE NO ACTION,
	CONSTRAINT UserScorePercent			CHECK
						(UserScore LIKE '[0-9][[0-9]')
	);

CREATE TABLE AnimeInfo (
	AnimeID				Int				NOT NULL IDENTITY(1,1),
	Anime	 			Char(50) 		NOT NULL,
	AniStatus			Char(20)		NULL,
	Aniformat 			Char(10)			NULL,
	Genre		 		Char(20) 		NULL,
	OverallScore		Int				NULL,
	Studio				Char(50)		NOT NULL,
	EpCount				int				NULL,
	AniReleased			int				NULL,
	CONSTRAINT AnimeIDPK		PRIMARY KEY(AnimeID),
	CONSTRAINT AniReleasedDate			CHECK
						(AniReleased LIKE '[1-2][0-9][0-9][0-9]'),
		CONSTRAINT OverallPercent		CHECK
						(OverallScore LIKE '[0-9][0-9]')
	);

CREATE TABLE StudioInfo (
	StudioID			Int			NOT NULL IDENTITY(1,1),
	Studio				Char(50) 	NOT NULL,
	StudioFounded 		Int			NULL, 
	CONSTRAINT 	StudioPK		PRIMARY KEY(StudioID),
	CONSTRAINT 	StudioFoundedDate 		CHECK
					(StudioFounded LIKE '[1-2][0-9][0-9][0-9]'),
	);


