-- Find posts made in April 2048 mentioning EmptyStack and the author's dad.
SELECT *
FROM forum_posts
WHERE date >= '2048-04-01'
    AND date < '2048-05-01'
    AND content ILIKE '%emptystack%'
    AND content ILIKE '%dad%';

-- The username of the author of the post is 'smart-money-44'. Find the name of the user.
SELECT *
FROM forum_accounts
WHERE username = 'smart-money-44';

-- The author of the post is named Brad Steele. Find forum accounts with the same last name.

SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- Find employees at EmptyStack with the same last name of Steele.
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- Andrew Steele shows up in both tables.
-- His employee username is 'triple-cart-38' and password is 'password456'.

-- Logged in using those credentials to 'node mainframe' and it created 'emptystack.sql'
-- this added tables "emptystack_messages" and "emptystack_projects" to the database.

-- Find any messages mentioning self-driving-taxis.
SELECT *
FROM emptystack_messages
WHERE body ILIKE '%taxi%';

-- Find the password for the admin 'your-boss-99' who sent the message.
SELECT * 
FROM emptystack_accounts
WHERE username = 'your-boss-99';

--Get the ID for Project TAXI.
SELECT * 
FROM emptystack_projects
WHERE code = 'TAXI';

-- the boss's password is 'notagaincarter'. 
-- the project ID is 'DczE0v2b'.

-- using the boss's account info I was able to shut down the project using node mainframe -stop