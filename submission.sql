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