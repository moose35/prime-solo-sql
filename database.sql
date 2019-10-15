--How do you get all users from Chicago?
SELECT "username" FROM "accounts"
WHERE "city" ILIKE 'Chicago';

--How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

--The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.
SELECT * FROM "accounts"
WHERE "transactions_completed" = 0
AND "transactions_attempted" =0;
--Because you always want to test it out first to make sure you're getting the correct parameters! Then do the following:

UPDATE "accounts"
SET "account_balance" = 10.00
WHERE "transactions_completed" = 0
AND "transactions_attempted" =0;

--How do you select all users that have attempted 9 or more transactions?
SELECT * FROM "accounts"
WHERE "transactions_attempted" >=9;

--How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
SELECT "username", "account_balance" FROM "accounts"
ORDER BY "account_balance" desc
LIMIT 3 OFFSET 0;

--How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?
SELECT "username", "account_balance" FROM "accounts"
ORDER BY "account_balance" asc
LIMIT 3 OFFSET 7;

--How do you get all users with account balances that are more than $100?
SELECT "username" FROM "accounts"
WHERE "account_balance" >100;

--How do you add a new account?
INSERT INTO "accounts"(user_id,
    username,
    city,
    transactions_completed,
    transactions_attempted)
VALUES(11,'Sharifa', 'Minneapolis', '0','0');

--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
ELECT * FROM "accounts"
WHERE "city" = 'phoenix'AND "transactions_completed"<5
OR "city" = 'miami' AND "transactions_completed"<5;
