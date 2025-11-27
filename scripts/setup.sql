CREATE USER thierry WITH PASSWORD 'Toto1234=';
CREATE DATABASE moviesdb OWNER thierry;
GRANT ALL PRIVILEGES ON DATABASE moviesdb TO thierry;

\l
\c moviesdb thierry

CREATE TABLE Movie
(
    Id int not null generated always as identity,
    Title varchar(255) not null,
    TitleCA varchar(255) not null,
    Year int not null,
    EntryDate timestamp not null
        CONSTRAINT DF_movie_EntryDate DEFAULT (CURRENT_TIMESTAMP),
    constraint pk_movie primary key (id)
);

insert into Movie (Title, TitleCA, Year) VALUES
('Dirty Dancing','Danse lascive', 1987),
('Pulp Fiction','Fiction pulpeuse', 1994),
('Scream','Frissons', 1996),
('Trainspotting','Ferrovipathes', 1996),
('Starship Troopers','Les Patrouilleurs de l’Espace', 1997);


