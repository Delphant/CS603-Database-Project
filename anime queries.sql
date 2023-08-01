/*Trevor Neal Anime List Queries*/

/*-----------------------------------------------------------
Aggregate Functions*/

/*Sum*/
SELECT SUM(EpCount) AS TotEpCount
FROM AnimeInfo;

/*Count*/
SELECT Anime, COUNT(Anime) AS Repeats
FROM UserAnime
GROUP BY Anime;
/*-----------------------------------------------------------
SQL JOIN*/
SELECT UserInfo.UserID, UserInfo.DaysWatched, UserAnime.Anime, UserAnime.Progress, UserAnime.IsFavorite, AnimeInfo.EpCount, StudioInfo.Studio
FROM UserInfo
INNER JOIN UserAnime ON UserInfo.UserID=UserAnime.UserID
INNER JOIN AnimeInfo ON UserAnime.Anime=AnimeInfo.Anime
INNER JOIN StudioInfo ON AnimeInfo.Studio=StudioInfo.Studio;

/*-----------------------------------------------------------
SubQuery*/

/*Find User score higher than 80%
Anime, studio, user score*/

/*Inner Query*/
SELECT UserScore 
FROM UserAnime 
WHERE UserScore = 75;

/*Outer Query*/
SELECT a.Anime, a.Studio, b.UserScore
FROM AnimeInfo a, UserAnime b
WHERE a.Anime = b.Anime
AND b.UserScore > 75;

/*Full SubQuery*/
SELECT a.Anime, a.Studio, b.UserScore
FROM AnimeInfo a, UserAnime b
WHERE a.Anime = b.Anime AND b.UserScore >
(SELECT UserScore
FROM UserAnime
WHERE UserScore =  75);
