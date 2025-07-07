# 🎵 MusicDataBase - Explore Music with SQL Queries 

**MusicDataBase** is a relational database application that allows users to explore and analyze music data using custom SQL queries. It includes structured tables for **Artists**, **Albums**, **Songs**, **Genres**, **Playlists**, **Users**, and more — offering a hands-on way to practice database concepts and query optimization.

This project is ideal for:
- Students learning **SQL / DBMS**
- Backend developers designing real-world schemas
- Anyone who wants to run queries on structured music data

---

## 🧱 Schema Overview

The database contains the following core tables:

| Table        | Description                                     |
|--------------|-------------------------------------------------|
| `Artists`    | Contains info about music artists               |
| `Albums`     | Albums created by artists                       |
| `Songs`      | Tracks with duration, release year, etc.        |
| `Genres`     | Genre categories (Pop, Rock, Hip-Hop, etc.)     |
| `Playlists`  | Playlists created by users                      |
| `Users`      | Listener profiles who can create playlists      |
| `SongGenres` | Many-to-many between songs and genres           |
| `PlaylistSongs` | Many-to-many between playlists and songs     |



## 🛠️ Technologies Used

- 💽 **MySQL** (or PostgreSQL, SQLite)
- 📋 SQL DDL & DML scripts
- 🖥️ SQL GUI tool (MySQL )

---

## 📦 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-username/MusicDataBase.git
cd MusicDataBase

### 2️⃣ Set Up the Database

mysql -u root -p < schema.sql

### 3️⃣ Run Queries

-- Get top 10 longest songs
example:-

SELECT title, duration FROM Songs ORDER BY duration DESC LIMIT 10;

-- List all albums by a specific artist
SELECT a.name AS artist, al.title AS album
FROM Albums al
JOIN Artists a ON al.artist_id = a.artist_id
WHERE a.name = 'AR Rahman';

-- Find playlists that contain more than 5 songs
SELECT p.name, COUNT(ps.song_id) AS total_songs
FROM Playlists p
JOIN PlaylistSongs ps ON p.playlist_id = ps.playlist_id
GROUP BY p.playlist_id
HAVING total_songs > 5;


