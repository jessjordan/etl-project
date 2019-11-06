CREATE TABLE features (
id TEXT PRIMARY KEY,
song TEXT,
artist TEXT,
popularity INT,
danceability NUMERIC (2,1),
valence NUMERIC (2,1)
);


CREATE TABLE top2018 (
id TEXT PRIMARY KEY,
song TEXT,
artist TEXT,
danceability NUMERIC (2,1),
valence NUMERIC (2,1)
);


select * from features
select * from top2018

drop table features 
drop table top2018 
