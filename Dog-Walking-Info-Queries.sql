SELECT o.[Name], n.[Name]
FROM [Owner] o
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id;

SELECT o.[Name], n.[Name]
FROM [Owner] o
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id
WHERE o.id = 2;

SELECT w.[Name]
FROM Walker w
ORDER BY w.[Name];

SELECT DISTINCT d.Breed
FROM Dog d;

SELECT d.[Name] AS 'Dog Name', o.[Name] AS 'Owner Name', n.[Name], 'Neighborhood'
FROM Dog d
LEFT JOIN Owner o
ON d.OwnerId = o.Id
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id;

SELECT 
COUNT(d.OwnerId), o.[Name]
FROM Dog d
LEFT JOIN Owner o
ON d.OwnerId = o.Id
GROUP BY o.[Name];

SELECT w.[Name], COUNT(ws.WalkerId) AS 'Walks'
FROM Walker w
LEFT JOIN Walks ws
ON ws.WalkerId = w.Id
GROUP BY w.[Name];

SELECT n.[Name], COUNT(w.NeighborhoodId) as 'Neighborhood Walkers'
FROM Neighborhood n
INNER JOIN Walker w
ON w.NeighborhoodId = w.Id
GROUP BY n.[Name];

SELECT DISTINCT d.[Name], ws.[Date]
FROM Dog d
LEFT JOIN Walks ws
ON ws.DogId = d.Id
WHERE ws.[Date] >= '03/17/2020' AND ws.[Date] <= '03/21/2020';

SELECT d.[Name]
FROM Dog d
LEFT JOIN Walks ws
ON ws.DogId = d.Id
GROUP BY d.[Name]
HAVING COUNT(ws.Id) = 0;