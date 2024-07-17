create table subscription(
s_id varchar(256) not null primary key,
cost float
);

INSERT INTO subscription (s_id, cost)
VALUES ('sub001', 399.99);
INSERT INTO subscription (s_id, cost)
VALUES ('sub002', 599.99);
INSERT INTO subscription (s_id, cost)
VALUES ('sub003', 799.99);
 
select * from subscription;

create table account(
acc_id varchar(256) not null primary key,
city varchar(256),
state varchar(256),
door_no varchar(256),
pincode float,
wallet float
);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc001', 'Mumbai', 'Maharashtra', '123 Main St', 400001, 500.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc002', 'New Delhi', 'Delhi', '456 Elm St', 110001, 1000.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc003', 'Bengaluru', 'Karnataka', '789 Oak St', 560001, 750.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc004', 'Chennai', 'Tamil Nadu', '321 Maple St', 600001, 1200.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc005', 'Hyderabad', 'Telangana', '654 Pine St', 500001, 800.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc006', 'Ahmedabad', 'Gujarat', '987 Oak St', 380001, 600.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc007', 'Kolkata', 'West Bengal', '246 Maple St', 700001, 900.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc008', 'Pune', 'Maharashtra', '369 Elm St', 411001, 1100.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc009', 'Jaipur', 'Rajasthan', '852 Pine St', 302001, 700.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc010', 'Lucknow', 'Uttar Pradesh', '753 Oak St', 226001, 1500.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc011', 'Chandigarh', 'Chandigarh', '546 Elm St', 160017, 2000.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc012', 'Bhopal', 'Madhya Pradesh', '987 Pine St', 462001, 900.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc013', 'Kochi', 'Kerala', '246 Oak St', 682001, 800.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc014', 'Amritsar', 'Punjab', '369 Maple St', 143001, 1000.00);

INSERT INTO account (acc_id, city, state, door_no, pincode, wallet)
VALUES ('acc015', 'Guwahati', 'Assam', '753 Pine St', 781001, 600.00);

select * from account;

create table userr(
user_id varchar(256) not null primary key,
name varchar(256),
email varchar(256),
gender varchar(256),
date_of_birth varchar(256),
s_id varchar(256),
acc_id varchar(256),
foreign key (s_id) references subscription(s_id) on delete cascade,
foreign key (acc_id) references account(acc_id) on delete cascade
);
INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u001', 'Rahul Sharma', 'rahul.sharma@example.com', 'Male', '1990-01-01', 'sub001', 'acc001');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u002', 'Sneha Patel', 'sneha.patel@example.com', 'Female', '1995-05-15', 'sub002', 'acc002');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u003', 'Aryan Singh', 'aryan.singh@example.com', 'Male', '1985-11-23', 'sub003', 'acc003');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u004', 'Pooja Gupta', 'pooja.gupta@example.com', 'Female', '1992-02-20', 'sub001', 'acc004');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u005', 'Neha Joshi', 'neha.joshi@example.com', 'Female', '1993-07-06', 'sub002', 'acc005');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u006', 'Aman Gupta', 'aman.gupta@example.com', 'Male', '1988-09-12', 'sub003', 'acc006');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u007', 'Divya Sharma', 'divya.sharma@example.com', 'Female', '1996-03-28', 'sub001', 'acc007');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u008', 'Ravi Singh', 'ravi.singh@example.com', 'Male', '1989-12-05', 'sub002', 'acc008');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u009', 'Preeti Patel', 'preeti.patel@example.com', 'Female', '1994-06-16', 'sub003', 'acc009');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id)
VALUES ('u010', 'Sanjay Verma', 'sanjay.verma@example.com', 'Male', '1987-10-08', 'sub001', 'acc010');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id) 
VALUES ('u011', 'Kavya Sharma', 'kavya.sharma@gmail.com', 'female', '1990-07-25', 'sub002', 'acc011');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id) 
VALUES ('u012', 'Ravi Singh', 'ravi.singh@gmail.com', 'male', '1988-05-12', 'sub002', 'acc012');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id) 
VALUES ('u013', 'Amanpreet Kaur', 'amanpreet.kaur@gmail.com', 'female', '1995-09-18', 'sub003', 'acc013');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id) 
VALUES ('u014', 'Neha Sharma', 'neha.sharma@gmail.com', 'female', '1987-12-01', 'sub002', 'acc014');

INSERT INTO userr (user_id, name, email, gender, date_of_birth, s_id, acc_id) 
VALUES ('u015', 'Amit Patel', 'amit.patel@gmail.com', 'male', '1992-03-06', 'sub001', 'acc015');

select * from userr;

create table subscription_previliges(
previlige varchar(256),
s_id varchar(256),
foreign key (s_id) references subscription(s_id) on delete cascade
);
drop table subscription_previliges;

INSERT INTO subscription_previliges(previlige, s_id) 
VALUES ('AD FREE','sub001');

INSERT INTO subscription_previliges(previlige, s_id) 
VALUES ('AD FREE','sub002');

INSERT INTO subscription_previliges(previlige, s_id) 
VALUES ('PRIME','sub002');

INSERT INTO subscription_previliges(previlige, s_id) 
VALUES ('AD FREE','sub003');

INSERT INTO subscription_previliges(previlige, s_id) 
VALUES ('PREMIUM','sub003');

SELECT * FROM subscription_previliges;

create table playlist(
playlist_id varchar(256) not null primary key,
playlist_name varchar(256),
no_of_songs float,
user_id varchar(256),
foreign key (user_id) references userr(user_id) on delete cascade
);

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl001', 'My Playlist 1', 4, 'u001');

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl002', 'My Playlist 2', 5, 'u002');

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl003', 'My Playlist 3', 8, 'u003');

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl004', 'My Playlist 4', 6, 'u004');

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl005', 'My Playlist 5', 3, 'u005');

INSERT INTO playlist (playlist_id, playlist_name, no_of_songs, user_id)
VALUES ('pl006', 'My Playlist 6', 6, 'u006');

select * from playlist;


create table album(
album_id varchar(256) not null primary key,
songs_count float,
date_of_publication varchar(256),
album_name varchar(256)
);

insert into album(album_id, songs_count, date_of_publication, album_name) 
values ('alb001', 8, '2021-01-01', 'Album 1');

insert into album(album_id, songs_count, date_of_publication, album_name) 
values ('alb002', 6, '2021-02-01', 'Album 2');

insert into album(album_id, songs_count, date_of_publication, album_name)
values ('alb003', 5, '2021-03-01', 'Album 3');

insert into album(album_id, songs_count, date_of_publication, album_name)
values ('alb004', 3, '2021-04-01', 'Album 4');

insert into album(album_id, songs_count, date_of_publication, album_name)
values ('alb005', 3, '2021-05-01', 'Album 5');
select * from album;



create table song(
song_name varchar(256) not null primary key,
genre varchar(256),
length_of_the_song varchar(256),
no_of_min_streamed varchar(256),
album_id varchar(256),
foreign key (album_id) references album(album_id) on delete cascade
);
INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Vachinde', 'Mass', '4:31', '5000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Inkem Inkem', 'Melody', '4:28', '7500000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Samajavaragamana', 'Melody', '3:29', '10000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Choosi Chudangane', 'Love', '3:42', '6000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Ninnu Kori Varanam', 'Love', '4:24', '4500000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Butta Bomma', 'Mass', '3:14', '15000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Ramuloo Ramulaa', 'Mass', '4:23', '8000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Dimaak Kharaab', 'Mass', '4:34', '6000000', 'alb001');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Undiporaadhey', 'Love', '4:59', '6500000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Seetha Kalyanam', 'Melody', '3:56', '3000000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Vellipomaakey', 'Melody', '3:41', '5500000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Naa Pranam', 'Love', '4:12', '4000000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Nee Kallalona', 'Love', '4:31', '3500000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Adiga Adiga', 'Melody', '4:30', '5000000', 'alb002');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id) 
VALUES ('Inkem Inkem Inkem Kaavaale', 'Melody', '4:30', '2000000', 'alb003');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Top Lesi Poddi', 'Mass Song', '4:10', '900000', 'alb003');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Maate Vinadhuga', 'Melody', '4:09', '1000000', 'alb003');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Pilla Raa', 'Love Song', '4:41', '1500000', 'alb003');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id) 
VALUES ('Mind Block', 'Mass Song', '3:54', '2000000', 'alb003');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Naa Pranamay', 'Love Song', '4:08', '150000', 'alb004');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Saranga Dariya', 'Folk Song', '4:19', '3000000', 'alb004');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id) 
VALUES ('Jigelu Rani', 'Mass Song', '4:09', '1500000', 'alb004');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Butterfly', 'Melody', '3:05', '3500000', 'alb005');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Gundelona', 'Love Song', '4:24', '200000', 'alb005');

INSERT INTO song (song_name, genre, length_of_the_song, no_of_min_streamed, album_id)
VALUES ('Kola Kalle', 'Melody', '3:43', '4500000', 'alb005');

select * from song;

create table review(
comment_id varchar(256),
user_id varchar(256),
commentt varchar(256),
primary key (comment_id,user_id),
foreign key (user_id) references userr(user_id) on delete cascade
);

INSERT INTO review (comment_id, user_id, commentt) VALUES 
('c001', 'u001', 'This song is amazing!');

INSERT INTO review (comment_id, user_id, commentt) VALUES
('c002', 'u002', 'One of the best songs I have ever heard.');

INSERT INTO review (comment_id, user_id, commentt) VALUES
('c003', 'u003', 'This song makes me want to dance every time.');

INSERT INTO review (comment_id, user_id, commentt) VALUES 
('c004', 'u004', 'Such a beautiful melody, can listen to it all day.');

INSERT INTO review (comment_id, user_id, commentt) VALUES
('c005', 'u005', 'This song is a masterpiece, simply love it.');

SELECT * FROM REVIEW;

create table song_review(
song_name varchar(256),
comment_id varchar(256),
user_id varchar(256),
foreign key (song_name) references song(song_name) on delete cascade,
foreign key (comment_id,user_id) references review(comment_id,user_id) on delete cascade
);

INSERT INTO song_review (song_name, comment_id, user_id) VALUES
('Saranga Dariya', 'c001', 'u001');
INSERT INTO song_review (song_name, comment_id, user_id) VALUES
('Gundelona', 'c002', 'u002');
INSERT INTO song_review (song_name, comment_id, user_id) VALUES 
('Jigelu Rani', 'c003', 'u003');
INSERT INTO song_review (song_name, comment_id, user_id) VALUES 
('Inkem Inkem Inkem Kaavaale', 'c004', 'u004');
INSERT INTO song_review (song_name, comment_id, user_id) VALUES
('Ramuloo Ramulaa', 'c005', 'u005');
select * from song_review;

create table artist(
artist_id varchar(256) not null primary key,
artist_name varchar(256)
);

insert into artist (artist_id, artist_name) values 
('AR001', 'Sid Sriram');
insert into artist (artist_id, artist_name) values 
('AR002', 'Shreya Ghoshal');
insert into artist (artist_id, artist_name) values
('AR003', 'SP Balasubrahmanyam');
insert into artist (artist_id, artist_name) values
('AR004', 'Chitra');
insert into artist (artist_id, artist_name) values
('AR005', 'Ghantasala');
SELECT * FROM ARTIST;

create table artist_album(
artist_id varchar(256),
album_id varchar(256),
foreign key (artist_id) references artist(artist_id) on delete cascade,
foreign key (album_id) references album(album_id) on delete cascade
);

INSERT INTO artist_album (artist_id, album_id) VALUES 
('AR001', 'alb001');
INSERT INTO artist_album (artist_id, album_id) VALUES 
('AR002', 'alb002');
INSERT INTO artist_album (artist_id, album_id) VALUES 
('AR003', 'alb003');
INSERT INTO artist_album (artist_id, album_id) VALUES 
('AR004', 'alb004');
INSERT INTO artist_album (artist_id, album_id) VALUES 
('AR005', 'alb005');
SELECT * FROM ARTIST_ALBUM;

create table song_playlist(
playlist_id varchar(256),
song_name varchar(256),
foreign key (playlist_id) references playlist(playlist_id) on delete cascade,
foreign key (song_name) references song(song_name) on delete cascade
);


INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl001', 'Saranga Dariya');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl001', 'Mind Block');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl001', 'Adiga Adiga');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl001', 'Samajavaragamana');

INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl002', 'Butta Bomma');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl002', 'Ramuloo Ramulaa');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl002', 'Vachinde');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl002', 'Inkem Inkem Inkem Kaavaale');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl002', 'Jigelu Rani');

INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Vachinde');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Samajavaragamana');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Butta Bomma');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Ramuloo Ramulaa');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Inkem Inkem Inkem Kaavaale');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Saranga Dariya');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Mind Block');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl003', 'Adiga Adiga');

INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Jigelu Rani');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Saranga Dariya');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Butta Bomma');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Vachinde');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Ramuloo Ramulaa');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl004', 'Mind Block');

INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl005', 'Inkem Inkem Inkem Kaavaale');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl005', 'Vachinde');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl005', 'Butta Bomma');

INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Saranga Dariya');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Ramuloo Ramulaa');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Adiga Adiga');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Jigelu Rani');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Vachinde');
INSERT INTO song_playlist (playlist_id, song_name) 
VALUES ('pl006', 'Butta Bomma');

select * from song_playlist;

create table user_artist(
user_id varchar(256),
artist_id varchar(256),
foreign key (user_id) references userr(user_id) on delete cascade,
foreign key (artist_id) references artist(artist_id) on delete cascade
);

INSERT INTO user_artist (user_id, artist_id)
VALUES ('u001', 'AR001');

INSERT INTO user_artist (user_id, artist_id)
VALUES ('u002', 'AR002');

INSERT INTO user_artist (user_id, artist_id)
VALUES ('u003', 'AR003');

INSERT INTO user_artist (user_id, artist_id)
VALUES ('u004', 'AR004');

INSERT INTO user_artist (user_id, artist_id)
VALUES ('u005', 'AR005');

select * from user_artist;


SELECT USERR.USER_ID,USERR.NAME,SUBSCRIPTION.S_ID FROM 
USERR JOIN SUBSCRIPTION ON USERR.S_ID=SUBSCRIPTION.S_ID;



SELECT PLAYLIST_ID FROM SONG_PLAYLIST
WHERE SONG_NAME='Ramuloo Ramulaa' 
GROUP BY PLAYLIST_ID HAVING COUNT(*)>=1;



SELECT USERR.NAME,REVIEW.COMMENTT FROM SONG_REVIEW 
JOIN REVIEW ON SONG_REVIEW.COMMENT_ID=REVIEW.COMMENT_ID
JOIN USERR ON REVIEW.USER_ID=USERR.USER_ID
WHERE SONG_NAME='Inkem Inkem Inkem Kaavaale';





SELECT SONG_NAME FROM SONG WHERE GENRE='Melody';
