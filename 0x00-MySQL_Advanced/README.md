## MySQL advanced

#### Requirements

   - All files will be executed using MySQL 5.7 (version 5.7.30)
   - All files should end with a new line
   - All SQL queries should have a comment just before (i.e. comments below)
   - All files should start by a comment describing the task
   - All SQL keywords should be in uppercase (SELECT, WHERE…)
   - The length of your files will be tested using wc
   
##

0. Write a SQL script that creates a table users following these requirements:

    With these attributes:
        id, integer, never null, auto increment and primary key
        email, string (255 characters), never null and unique
        name, string (255 characters)
    If the table already exists, your script should not fail
    Your script can be executed on any database

Context: __Make an attribute unique directly in the table schema will enforced your business rules and avoid bugs in your application__

1. Write a SQL script that creates a table users following these requirements:

    With these attributes:
        id, integer, never null, auto increment and primary key
        email, string (255 characters), never null and unique
        name, string (255 characters)
        country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
    If the table already exists, your script should not fail
    Your script can be executed on any database

2. Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans. Requirements:

    Import this table dump: [metal_bands.sql.zip](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/misc/2020/6/ab2979f058de215f0f2ae5b052739e76d3c02ac5.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230117T081032Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=178ffbe78fc258f6fdef285971b83a829231475582e3d8c7c1d60cab13260b35)
    Column names must be: origin and nb_fans
    Your script can be executed on any database

Context: __Calculate/compute something is always power intensive… better to distribute the load!__

3. Write a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity. Requirements:

    Import this table dump: [metal_bands.sql.zip](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/misc/2020/6/ab2979f058de215f0f2ae5b052739e76d3c02ac5.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230117%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230117T081032Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=178ffbe78fc258f6fdef285971b83a829231475582e3d8c7c1d60cab13260b35)
    Column names must be: `band_name` and `lifespan` (in years)
    You should use attributes `formed` and `split` for computing the `lifespan`
    Your script can be executed on any database

4. Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order. Quantity in the table items can be negative.

Context: __Updating multiple tables for one action from your application can generate issue: network disconnection, crash, etc… to keep your data in a good shape, let MySQL do it for you!__

5. Write a SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

Context: __Nothing related to MySQL, but perfect for user email validation - distribute the logic to the database itself!__

6. Write a SQL script that creates a stored procedure AddBonus that adds a new correction for a student. Requirements:

    Procedure AddBonus is taking 3 inputs (in this order):
        user_id, a users.id value (you can assume user_id is linked to an existing users)
        project_name, a new or already exists projects - if no projects.name found in the table, you should create it
        score, the score value for the correction

Context: __Write code in SQL is a nice level up!__

7. Write a SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student. Note: An average score can be a decimal. Requirements:

    Procedure ComputeAverageScoreForUser is taking 1 input:
        user_id, a users.id value (you can assume user_id is linked to an existing users)

8. Write a SQL script that creates an index idx_name_first on the table names and the first letter of name. Requirements:

    Import this table dump: [names.sql.zip](https://intranet-projects-files.s3.amazonaws.com/holbertonschool-webstack/632/names.sql.zip)
    Only the first letter of name must be indexed

Context: __Index is not the solution for any performance issue, but well used, it’s really powerful!__

9. Write a SQL script that creates an index idx_name_first_score on the table names and the first letter of name and the score. Requirements:

    Import this table dump: names.sql.zip
    Only the first letter of name AND score must be indexed

10. Write a SQL script that creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0. Requirements:

    You must create a function
    The function SafeDiv takes 2 arguments:
        a, INT
        b, INT
    And returns a / b or 0 if b == 0

11. Write a SQL script that creates a view need_meeting that lists all students that have a score under 80 (strict) and no last_meeting or more than 1 month. Requirements:

    The view need_meeting should return all students name when:
        They score are under (strict) to 80
        AND no last_meeting date OR more than a month

12. Write a SQL script that creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student. Requirements:

    Procedure ComputeAverageScoreForUser is taking 1 input:
        user_id, a users.id value (you can assume user_id is linked to an existing users)
Tips:

    [Calculate-Weighted-Average](https://www.wikihow.com/Calculate-Weighted-Average)

13. Write a SQL script that creates a stored procedure ComputeAverageWeightedScoreForUsers that computes and store the average weighted score for all students. Requirements:

    Procedure ComputeAverageWeightedScoreForUsers is not taking any input.Tips:

    [Calculate-Weighted-Average](https://www.wikihow.com/Calculate-Weighted-Average)

