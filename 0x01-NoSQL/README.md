## NoSQL

#### Requirements

 __MongoDB Command File__

   - All files will be interpreted/compiled using MongoDB (version 4.2)
   - All files should end with a new line
   - The first line of all files should be a comment: // my comment
   - The length of your files will be tested using wc

 __Python Scripts__

   - All files will be interpreted/compiled using python3 (version 3.7) and PyMongo (version 3.10)
   - All files should end with a new line
   - The first line of all your files should be exactly `#!/usr/bin/env python3`
   - Your code should use the pycodestyle style (version 2.5.*)
   - The length of your files will be tested using wc
   - All modules should have a documentation `(python3 -c 'print(__import__("my_module").__doc__)')`
   - All functions should have a documentation `(python3 -c 'print(__import__("my_module").my_function.__doc__)')`
   - Your code should not be executed when imported `(by using if __name__ == "__main__":)`

   
##

0. Write a script that lists all databases in MongoDB.
1. Write a script that creates or uses the database `my_db`
2. Write a script that inserts a document in the collection `school`:

    The document must have one attribute name with value “Holberton school”
    The database name will be passed as option of `mongo` command

3. Write a script that lists all documents in the collection `school`:

    The database name will be passed as option of `mongo` command

4. Write a script that lists all documents with name="Holberton school" in the collection `school`:

    The database name will be passed as option of `mongo` command

5. Write a script that displays the number of documents in the collection `school`:

    The database name will be passed as option of `mongo` command

6. Write a script that adds a new attribute to a document in the collection `school`:

    The script should update only document with name="Holberton school" (all of them)
    The update should add the attribute address with the value “972 Mission street”
    The database name will be passed as option of `mongo` command

7. Write a script that deletes all documents with name="Holberton school" in the collection `school`:

    The database name will be passed as option of `mongo` command

8. 
