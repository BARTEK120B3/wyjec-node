create database wyjec character set utf8 collate utf8_polish_ci;

use wyjec;

create table user (
    id int auto_increment,
    email varchar(45) not null,
    password varchar(100) not null,
    nick varchar(45) not null,
    primary key (id)
)

create table playlist (
    id int auto_increment,
    name varchar(100) not null,
    user_id int not null,
    primary key (id),
    constraint fk_playlist_user_id foreign key (user_id) references user(id)
)

create table album (
    id int auto_increment,
    name varchar(100) not null,
    image longblob not null,
    primary key (id)
)

create table song (
    id int auto_increment,
    name varchar(100) not null,
    album_id int not null,
    primary key (id),
    constraint fk_song_album_id foreign key (album_id) references album(id)
)

create table playlist_song (
    song_id int not null,
    playlist_id int not null,
    constraint fk_playlist_song_song_id foreign key (song_id) references song(id),
    constraint fk_playlist_song_playlist_id foreign key (playlist_id) references playlist(id)
)