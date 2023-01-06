USE GameDB;

CREATE INDEX i1 ON accounts(accountName);
DROP INDEX accounts.i1;

CREATE UNIQUE INDEX i2 ON accounts(accountName, coins);
DROP INDEX accounts.i2;
