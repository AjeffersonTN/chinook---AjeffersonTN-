--  Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT p.Name Playlist, Count(t.TrackId) Tracks
FROM Track t 
JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
JOIN Playlist p ON p.PlayListId = pt.PlaylistId
GROUP BY p.Name
ORDER BY Tracks DESC;









