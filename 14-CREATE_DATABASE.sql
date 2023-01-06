USE GameDB;

CREATE DATABASE GameDB;

CREATE TABLE accounts(
	accountId INTEGER NOT NULL,
	accountName VARCHAR(10) NOT NULL,
	coins INTEGER DEFAULT 0,
	createdTime DATETIME
);

SELECT *
FROM accounts;

DROP TABLE accounts;

ALTER TABLE accounts
ADD lastEnterTime DATETIME;

ALTER TABLE accounts
DROP COLUMN lastEnterTime;

ALTER TABLE accounts
ALTER COLUMN accountName VARCHAR(20) NOT NULL;

ALTER TABLE accounts
ADD PRIMARY KEY(accountId);

ALTER TABLE accounts
ADD CONSTRAINT PK_Accounts PRIMARY KEY (accountId);

ALTER TABLE accounts
DROP CONSTRAINT PK_Accounts

SELECT *
FROM accounts
WHERE accountId = 1111;