/*Trevor Neal Anime List Insert Data*/

USE Anime_list
GO

SET IDENTITY_INSERT dbo.UserInfo OFF
SET IDENTITY_INSERT dbo.UserAnime OFF
SET IDENTITY_INSERT dbo.AnimeInfo OFF
SET IDENTITY_INSERT dbo.StudioInfo OFF


SET IDENTITY_INSERT dbo.UserInfo ON

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	177013, 'MrMeatBall', '6', 53.5);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
 	130753,	'Delphant',	'8', 83.6);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	157802,	'BerserkFan', '2', 12.4);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	123457,	'Yoinkers', '1', 175.5);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	183544, 'Spokokin', '18', 34.1);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	155220,	'ExplodingCat',	'1', 22);

INSERT INTO UserInfo
	(UserID, Username,  FollowCount, DaysWatched)
	VALUES (
	197473,	'GokuLover', '2', 87.2);



SET IDENTITY_INSERT dbo.UserInfo OFF

SET IDENTITY_INSERT dbo.UserAnime ON

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'One Piece', 1, 'Watching', 85, 177013);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Chainsaw Man', 1, 'Completed', 95, 130753);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Berserk', 0, 'Completed', 99, 157802);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Devilman Crybaby', 0, 'Paused', 67, 123457);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Attack on Titan', 0, 'Completed', 75, 177013);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Berserk', 0, 'Watching', 86, 183544);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'My Neighbor Totoro', 1, 'Completed', 87, 155220);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Dragon Ball Super', 1, 'Completed', 94, 197473);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Kikis Delivery Service', 1, 'Completed', 99, 130753);

INSERT INTO UserAnime
	(Anime, IsFavorite, Progress, UserScore, UserID)
	VALUES (
	'Jujutsu Kaisen', 0, 'Watching', 67, 123457);

SET IDENTITY_INSERT dbo.UserAnime OFF

SET IDENTITY_INSERT dbo.AnimeInfo ON

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	1, 'One Piece', 'Releasing', 'TV',	'Pirate', 76, 'Toei Animation', 1015, 1999);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	2, 'Chainsaw Man', 'Finished', 'TV', 'Action', 86, 'MAPPA', 32, 2022);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	3, 'Berserk', 'Finished', 'TV', 'Action', 89, 'OLM', 25, 1999);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	4, 'Devilman Crybaby', 'Finished', 'ONA', 'Horror', 77, 'Science SARU', 310, 2018);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	5, 'Attack on Titan', 'Finished', 'TV', 'Drama', 85, 'Wit Studio', 25, 2013);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	6, 'My Neighbor Totoro', 'Finished', 'Movie', 'Adventure', 80, 'Ghibli', 1, 1988);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	7, 'Dragon Ball Super', 'Finished', 'TV', 'Action', 71, 'Toei Animation', 131, 2015);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	8, 'Kikis Delivery Service', 'Finished', 'Movie', 'Adventure', 81, 'Ghibli', 1, 1989);

INSERT INTO AnimeInfo
	(AnimeID, Anime, AniStatus, AniFormat, Genre, OverallScore, 
	Studio, EpCount, AniReleased)
	VALUES (
	9, 'Jujutsu Kaisen', 'Finished', 'TV', 'Action', 87, 'MAPPA', 24, 2020);

SET IDENTITY_INSERT dbo.AnimeInfo OFF

SET IDENTITY_INSERT dbo.StudioInfo ON

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	1, 'Toei Animation', 1948);

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	2, 'MAPPA', 2011);

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	3, 'OLM', 1994);

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	4, 'Science SARU', 2013);

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	5, 'Wit Studio', 2012);

INSERT INTO StudioInfo
	(StudioID, Studio, StudioFounded)
	VALUES (
	6, 'Ghibli', 1985);

SET IDENTITY_INSERT dbo.StudioInfo OFF