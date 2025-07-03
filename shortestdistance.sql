SELECT
    ROUND(
        SQRT(
            MIN(POW(a.x-b.x,2) + POW(a.y-b.y,2))
        )
        ,2
    ) shortest
FROM point_2d a 
CROSS JOIN point_2d b
WHERE NOT (a.x = b.x AND a.y = b.y)


SELECT ROUND(SQRT(POW(p1.x - p2.x, 2) + POW(p1.y - p2.y, 2)), 2) AS shortest
FROM
    Point2D AS p1
    JOIN Point2D AS p2 ON p1.x != p2.x OR p1.y != p2.y
ORDER BY 1
LIMIT 1;