DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS like;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS follow;

CREATE TABLE post (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    photo TEXT,
    date TEXT,
    time TEXT,
    caption TEXT,
    user_id TEXT
);

CREATE TABLE like (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT,
    time TEXT,
    post_id TEXT,
    user_id TEXT
);

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_name TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE comment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    comment_text TEXT,
    date TEXT,
    time TEXT,
    post_id TEXT,
    user_id TEXT
);

CREATE TABLE follow (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    following_user_id TEXT,
    follower_user_id TEXT
);
