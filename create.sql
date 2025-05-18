DROP TABLE IF EXISTS hitters;
DROP TABLE IF EXISTS pitchers;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS attendance;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS ages;
DROP TABLE IF EXISTS divisions;

CREATE TABLE teams (
    year INT NOT NULL,
    team TEXT NOT NULL,
	manager TEXT NOT NULL,
    win INT NOT NULL DEFAULT 0,
    lose INT NOT NULL DEFAULT 0,
    ties INT NOT NULL DEFAULT 0,
    finish INT,
    wpost INT,
    lpost INT,
	PRIMARY KEY (year, team, manager)
);

CREATE TABLE managers (
    year INT NOT NULL,
    manager TEXT NOT NULL,
    team TEXT NOT NULL,
    challenges INT NOT NULL DEFAULT 0,
    overturned INT NOT NULL DEFAULT 0,
    ejections INT NOT NULL DEFAULT 0,
	PRIMARY KEY (year, manager)
);

CREATE TABLE pitchers (
    player TEXT NOT NULL,
    ip FLOAT NOT NULL DEFAULT 0 ,
    pit INT NOT NULL DEFAULT 0,
    season INT NOT NULL,
    team TEXT NOT NULL,
    w INT NOT NULL DEFAULT 0,
    l INT NOT NULL DEFAULT 0,
    g INT NOT NULL DEFAULT 0,
    gs INT NOT NULL DEFAULT 0,
    cg INT NOT NULL DEFAULT 0,
    sho INT NOT NULL DEFAULT 0,
    sv INT NOT NULL DEFAULT 0,
    h INT NOT NULL DEFAULT 0,
    r INT NOT NULL DEFAULT 0,
    er INT NOT NULL DEFAULT 0,
    hr INT NOT NULL DEFAULT 0,
    bb INT NOT NULL DEFAULT 0,
    ibb INT NOT NULL DEFAULT 0,
    so INT NOT NULL DEFAULT 0,
    hbp INT NOT NULL DEFAULT 0,
    bk INT NOT NULL DEFAULT 0,
    wp INT NOT NULL DEFAULT 0,
    bf INT NOT NULL DEFAULT 0,
    era_plus FLOAT,
    str INT NOT NULL DEFAULT 0,
    pos TEXT NOT NULL DEFAULT '1',
	PRIMARY KEY (player, season, team)
);

CREATE TABLE hitters (
    player TEXT NOT NULL,
    team TEXT NOT NULL,
    season INT NOT NULL,
    ab INT NOT NULL DEFAULT 0,
    pa INT NOT NULL DEFAULT 0,
    g INT NOT NULL DEFAULT 0,
    r INT NOT NULL DEFAULT 0,
    h INT NOT NULL DEFAULT 0,
    "2B" INT NOT NULL DEFAULT 0,
    "3B" INT NOT NULL DEFAULT 0,
    hr INT NOT NULL DEFAULT 0,
    rbi INT NOT NULL DEFAULT 0,
    sb INT NOT NULL DEFAULT 0,
    cs INT NOT NULL DEFAULT 0,
    bb INT NOT NULL DEFAULT 0,
    so INT NOT NULL DEFAULT 0,
    ops_plus FLOAT,
    tb INT NOT NULL DEFAULT 0,
    gidp INT NOT NULL DEFAULT 0,
    hbp INT NOT NULL DEFAULT 0,
    sh INT NOT NULL DEFAULT 0,
    sf INT NOT NULL DEFAULT 0,
    ibb INT NOT NULL DEFAULT 0,
    pos TEXT NOT NULL,
	PRIMARY KEY (player, season, team)
);

CREATE TABLE attendance (
    year INT NOT NULL,
    team TEXT NOT NULL,
    num_home_games INT NOT NULL,
    home_avg INT NOT NULL,
    num_away_games INT NOT NULL,
    away_avg INT NOT NULL,
	PRIMARY KEY (year, team)
);

CREATE TABLE ages (
	player TEXT NOT NULL,
	season INT NOT NULL,
	age INT NOT NULL
);

CREATE TABLE divisions (
	team TEXT NOT NULL,
	division TEXT NOT NULL,
	PRIMARY KEY (team)
);