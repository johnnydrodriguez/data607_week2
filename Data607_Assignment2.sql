-- Johnny Rodriguez Assigment 2 - Movie Ratings Database

-- Create  "mymovies" database in GCP platform

-- Creates the MovieTable
create table movie_list (  
movie_id serial PRIMARY KEY,  
title character(50));

-- Creates Individual Rating Tables
create table johnny_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

create table keyla_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

create table delilah_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

create table eva_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

create table emily_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

create table kleber_ratings (
movie_id integer references tblmovielist (movie_id),
rating numeric);

-- Creates the Ratings Definition Table
create table ratings_def (
rating numeric,
definitions character(50));

-- Populates the Movie List
insert into movie_list (title)
values
('Finding Nemo'),
('Finding Dory'),
('Sonic the Hedgehog 2'),
('Beauty and the Beast'),
('Frozen 2'),
('The Little Mermaid');

-- Populates the Ratings Definitions
insert into ratings_def (rating, definitions)
values
('1', 'Poor'),
('2', 'Fair'),
('3', 'Mediocre'),
('4', 'Good'),
('5', 'Excellent');

-- Populates Keyla's Ratings
insert into keyla_ratings (movie_id, rating)
values
('1', '5'),
('2', '5'),
('3', '3'),
('4', '5'),
('5', '4'),
('6', '4');

-- Populates Delilah's Ratings
insert into delilah_ratings (movie_id, rating)
values
('1', '4'),
('2', '4'),
('3', '5'),
('4', '4'),
('5', '5'),
('6', '4');

-- Populates Eva's Ratings
insert into eva_ratings (movie_id, rating)
values
('1', '1'),
('2', '1'),
('3', '5'),
('4', '1'),
('5', '5'),
('6', '1');

-- Populates Johnny's Ratings
insert into johnny_ratings (movie_id, rating)
values
('1', '4'),
('2', '4'),
('3', '5'),
('4', '2'),
('5', '2'),
('6', '1');

-- Populates Emily's Ratings
insert into emily_ratings (movie_id, rating)
values
('1', '4'),
('2', '4'),
('3', NULL),
('4', NULL),
('5', '4'),
('6', NULL);

-- Populates Kleber's Ratings
insert into kleber_ratings (movie_id, rating)
values
('1', '4'),
('2', NULL),
('3', '4'),
('4', NULL),
('5', NULL),
('6', NULL);

