1.- Please define a raw abstract of a transaction, it can include between 3 and 5 operations. The transaction must be rollbacked.
  BEGIN;
    INSERT INTO table1(field1, field2, field3)
    VALUES(value_for_field1, value_for_field2, value_for_field3);

    INSERT INTO table2(field1, field2, field3) 
    VALUES(value_for_field1, value_for_field2, value_for_field3);

    UPDATE table1 SET field2 = new_value_for_field2
    WHERE id_field = 1;

    SELECT CONCAT(T1.field1, ' ', T1.field2) as Aluas, T2.field1
    FROM table1 AS T1
    JOIN table2 AS T2 ON T1.id_field = T1.id_field
    WHERE T1.id_field = 1;
      
  ROLLBACK;

2.- Please define a PostgreSQL function that returns true or false if the selected number is even. 
  CREATE FUNCTION check_odd(num)
  IF mod(num, 2) = 0 THEN
    return TRUE;
  ELSE
    return FALSE;
  END IF;
  END;

3.- What is an aggregate function and define what do they need to work.
  Is a function in sql that makes a calculation on a set of values in base to what we want to calculate 
  and it will return a single value.
  this aggregate functions needs the column from the thable where is the data that we want to manage to 
  make the calculation

4.- Please define a custom aggregate function. 
  CREATE FUNCTION replacement_cost(total numeric, replacement_cost numeric)
    RETURNS numeric 
    LANGUAGE plpgsql
    AS
    $$
    BEGIN
      SELECT total + replacement_cost into total;
    RETURN total;
    END;
    $$

  SELECT sum_replacement(replacement_cost)
  FROM film

  CREATE AGGREGATE sum_replacement(numeric(5,2))(
    INITCOND = 0,
    STYPE = numeric,
    SFUNC = replacement_cost
  )

5.- Between what clauses do the HAVING clause execute? 
  Between GROUP BY and ORDER BY

6.- What types of views are stored in memory? Please define a way to use them (not create them). 
  The created views are stored in memory due to it's kind of a virtual table.

  SELECT * FROM created_view;

7.- How do you declare a cursor?
  DECLARE 
      <name_of_your_cursor> CURSOR FOR <query>

8.- What is an asensitive cursor?
  The ones that points to the actual data. it does not make a temporary copy of data.

9.- How do we define a custom cast?
  CREATE CAST (original_type AS new_type)
      WITH FUNCTION <function_name>

10.- What command do you use to bring the commit with hash 3c94f71fdf813bc475cb13f8f90b83de9cc475cb to the current branch? 
  git cherry-pick 3c94f71fdf813bc475cb13f8f90b83de9cc475cb

11.- How do you mix the branches chore/configuration and chore/setup?
  git checkout chore
  git merge configuration
  git merge setup

12.- How do you make a commit? 
  git commit -m "Some description"

13.- What HTTP methods are idempotent?
  GET, PUT, DELETE, HEAD

14.- Please define the A PIE of Object Oriented Programming. 
  Polymorphism, Inheritance and Encapsulation

15.- Define a polymorphic method in Ruby. 
  Since the term of polymorphism is referenced to a method that functionates in different ways i'll start making an inheritance

  class Animal
    def makeSound
      puts "Making a sound according to the animal"
    end
  end

  class Cat
    def makeSound
      puts "Meow"
    end
  end

  class Dog
    def makeSound
      puts "Woof"
    end
  end

16.- Define the usage of super and explain what is the difference between using parenthesis or not.
  Super calls a method defined on the parent class with the same name as the method in wich super is called
  for example in the code written in question 15 if instead of writing "puts "Meow"" in the makeSound method
  from the Cat class we call "super" it would return "Making a sound according to the animal"

  super with parenthesis is used to define the arguments that we want to pass to the parent method if its the case
  that we are not receiving the same arguments in the soon class maybe

17.- What is the difference between include and extend? 
  When we include a module we have access to the methods through the instance of an object, it means that an objet 
  from a class that include a module has access to the methods of this module.

  When we exclude a module on a class it means that only the class has access to the methods on that module,
  so the objects don’t have access to these methods

18.- Define what is a class method? 
  The methods defined with self that only functions from a class not for an objec of this class

19.- Define what is an instance method?
  The methods definined inside a class that are available only when you make an instance of this class and onsly for this instance

20.- What is IRB?
  Is the ruby shell, and is a tool to try ruby code without making a file

21.- How do we know what type of class is a variable?
  variable.class

22.- How do we define a binary number? 
  with the 0b prefix
  example = 0b001

23.- What are keyword splat arguments? Define the difference with splat arguments.
  is an option to pass a hash to a function and the difference with splat arguments is that with splat argument we can
  only pass a lot of arguments.

24.- How do we define a range?
  there are some ways
  range1 = (1..10) #excluding 10
  range2 = (1..10) #including 10


25.- How do we modify arrays? 
  array.map!

26.- Define three methods for arrays and their usage. 
  array.length #it returns the lenght of an array and its simple but very usefull
  array.pusth(element) #add an element at the end of the array
  array.pop #removes the las element of the array

27.- Define three methods for Numeric and their usage. 
  number.even? #returns true if the number is an even and false if is an odd
  number.floor #it removes the decimals from a number
  number.to_s #turns a number into a string

28.- Define three methods for String and their usage. 
  string.size #returns the lengthg of a string
  string.include?("string") #looks in the string for another string in passed as argument
  string.downcase #turns a string all in downcase.

29.- Elaborate and explain the six assignment combined operators. 
  value1 < value2 #returns true if value1 is smaller than value2
  value1 > value2 #returns true if value1 is greater than value2
  value1 >= value2 #returns true if value1 is greater or equals than value2
  value1 <= value2 #returns true if value1 is smaller or equals than value2
  value1 == value2 #returns true if value1 is equals to value2
  value1 != value2 #returns true if value 1 is different to value2

30.- What is the spaceship operator? How does it look like? 
  This is kid of a combination of the operators

  value1 <=> value2

  #returns 0 if value1 is equals to value2
  #returns 1 if value1 is greater than value2
  #returns -1 if value1 is smaller than value2