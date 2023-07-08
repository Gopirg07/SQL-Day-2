-- create database imdb
-- use imdb

-- 1. A Movie Should Have Multiple Medium(Video or Image) .
-- create table Movie(
-- id int auto_increment,
-- Movie_name varchar(255) not null,
-- release_date varchar(255) not null,
-- duration varchar(255) not null,
-- Director varchar(255) not null,
-- Actors varchar(500) not null, 
-- poster varchar(500) not null,
-- createdAt timestamp default current_timestamp,
-- updatedAt timestamp on update current_timestamp,
-- primary key(id)
-- )

 -- insert into Movie(Movie_name,Director,release_date,duration,Actors,poster)
--  values('RRR','Rajamouli','24-03-2022','3hrs 3min','Jr N.T.R,Ram Charan,Alia Bhatt','https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/rrr-et00094579-12-05-2022-02-26-04.jpg')

--  values('Ponniyan Selvan','Manirathnam','30-09-2022','2hrs 50min','Vikram,Jeyam Ravi,Karthi','https://images-na.ssl-images-amazon.com/images/S/pv-target-images/7e25f103214ea7116adf106e3762b591a2b46469377bc310b5983dbeb623a0f4._UY500_UX667_RI_TTW_.jpg'),
--  
--  select * from Movie

-- 2. A Movie Can Belongs To Multiple Genre .

-- create table Genre(
-- id int not null auto_increment,
-- Genre_id int,
-- Genre varchar(255),
-- primary key(id),
-- foreign key(Genre_id) references Movie(id)
-- )

-- insert into Genre(Genre_id,Genre) values(1,'Adventure,Historic'),(2,'Drama,Action'),(3,'Drama,Romance')
-- select * from Genre


-- 3. A Movie Can Have Multiple Reviews And Review Can Belongs To A User .

-- create table Reviews(
-- id int not null auto_increment,
-- user_id int,
-- user_name varchar(255) not null,
-- rating int not null,
-- primary key(id),
-- foreign key(user_id) references Movie(id)
-- )

-- insert into Reviews(user_id,user_name,rating) values(1,'Gopi',8),(2,'G0pi',9);
-- select * from Reviews


-- 4. An Artist Can Have Multiple Skills .

-- create table Skills(
-- id int not null auto_increment,
-- Artist_name varchar(255),
-- Artist_id int,
-- Skills varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )

-- insert into Skills(Artist_name,Artist_id,Skills) values('Kamal Haasan',1,'Director,Actor,Singer,Choreographer,Writter,Producer'),
-- ('Aadhi',2,'Actor,Singer,Lyrist,Director')

-- select * from Skills


--  5. An Artist Can Perform Multiple Roles In A Single Film .

-- create table Role(
-- id int not null auto_increment,
-- Artist_id int,
-- Artist_name varchar(255),
-- movie_name varchar(255),
-- Artist_role varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )
 
--  insert into Role(Artist_id,Artist_name,movie_name,Artist_role) 
--  values(1,'Kamal Haasan','Vishwaroopam','Director,Actor,producer,Story'),(2,'sivakarthikeyan','DON','Actor,producer,lyrist')

-- select * from Role