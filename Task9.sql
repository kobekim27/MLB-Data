INSERT INTO hitters (player, team, season, ab, pa, g, r, h, "2B", "3B", hr, rbi, sb, cs, bb, so, ops_plus, tb, gidp, hbp, sh, sf, ibb, pos)
VALUES ('Test Hitter', 'NYY', 2024, 100, 110, 30, 20, 35, 8, 1, 5, 25, 5, 2, 10, 30, 120.5, 50, 3, 2, 1, 1, 0, 'RF');

INSERT INTO pitchers (player, ip, pit, season, team, w, l, g, gs, cg, sho, sv, h, r, er, hr, bb, ibb, so, hbp, bk, wp, bf, era_plus, str, pos)
VALUES ('Test Pitcher', 75.2, 1200, 2024, 'NYY', 5, 3, 20, 15, 0, 1, 2, 50, 25, 20, 6, 15, 2, 80, 3, 1, 2, 300, 110.3, 500, 'P');

DELETE FROM hitters
WHERE player = 'Test Hitter' AND season = 2024;

DELETE FROM pitchers
WHERE player = 'Test Pitcher' AND season = 2024;

UPDATE managers
SET ejections = ejections + 1
WHERE manager = 'Aaron Boone' AND year = 2023;

UPDATE attendance
SET home_avg = home_avg + 500
WHERE team = 'NYY' AND year = 2023;

SELECT h.player, h.team, h.season, d.division
FROM hitters h
JOIN divisions d ON h.team = d.team
WHERE h.season = 2023
ORDER BY h.team
LIMIT 10;

SELECT team, AVG(home_avg) AS avg_home_attendance
FROM attendance
GROUP BY team
ORDER BY avg_home_attendance DESC;

SELECT player, team, season, so
FROM hitters
WHERE so < (
    SELECT AVG(so) FROM hitters WHERE season = 2023
)
ORDER BY so ASC
LIMIT 10;

SELECT player, team, season, so
FROM pitchers
WHERE season = 2023
ORDER BY so DESC
LIMIT 5;