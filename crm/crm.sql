-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS activity_log;
DROP TABLE IF EXISTS sales_people;
DROP TABLE IF EXISTS industry;
DROP TABLE IF EXISTS company_industry;


CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT
);

CREATE TABLE contact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT,
    phone TEXT,
    company_id TEXT
);

CREATE TABLE activity_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    date TEXT,
    notes TEXT,
    contact_id TEXT,
    company_id TEXT,
    sales_person_id TEXT
);

CREATE TABLE sales_people (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE industry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE company_industry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_id TEXT,
    company_id TEXT
);