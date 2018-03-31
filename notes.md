# Pseudo-Code

| keyword | meaning |
| ------- | ------- |
| START |	start of the program
| SET	| sets a variable we can use for later
| GET	| retrieve input from user
| PRINT	| displays output to user
| READ	| retrieve value from variable
| IF / ELSE IF / ELSE	| show conditional branches in logic
| WHILE	| show looping logic
| END	| end of the program

## Example 1
### Determine which number is greatest in a collection

#### My Pseudo-Code
Given a collection of integers.

* initialize max_num to first value of integer collection
* iterate through the integers collection one by one
  * if the current_value of the iteration is greater than max_num then reassign the max_num to the current_value
* once iteration is complete, return the max_num

#### My Formal Pseudo-Code
Given a collection of integers called "numbers"

* START
* SET max_num = value within numbers collection at space 1
* SET iterator = 1
* WHILE iterator < size of numbers
  * SET current_number = value within the number's collection at space "iterator"
  * IF current_number > max_num
   * SET max_num to current_number
  * iterator = iterator + 1
* PRINT max_num
* END

## Write out pseudo-code (both casual and formal) that does the following:
1. a method that returns the sum of two integers
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
3. a method that takes an array of integers, and returns a new array with every other element

### 1. Write a method that returns the sum of two integers

#### My Pseudo-Code
Given two integers

* initialize sum to the sum of the two given integers
* return the sum

#### My Formal Pseudo-Code
Given two integers called "int_1" and "int_2"

* START
* SET sum = int_1 + int_2
* PRINT sum
* END

### 2. Write a method that takes an array of strings, and returns a string that is all those strings concatenated together

#### My Pseudo-Code
Given an array of strings

* initialize a new_string to the first string of given array
* iterate through the given array of strings one by one
  * concatenate current iteration string to new_string
* return the new_string

#### My Formal Pseudo-Code
Given an array of strings called "arr_strings"

* START
* SET all_strings = value within arr_strings at space 1
* SET iterator = 1
* WHILE iterator < size of arr_strings
 * SET all_strings = all_strings + value within arr_strings at space "iterator"
* PRINT all_strings
* END

### 3. Write a method that takes an array of integers, and returns a new array with every other element

#### My Pseudo-Code
Given an array of integers

* initialize a new array to the first integer of given array
* iterate through the given array of integers by index
  * add each integer at an odd index to the new array
* return the new array

#### My Formal Pseudo-Code
Given an array of integers called "arr_ints"

* START
* SET new_arr = []
* SET iterator = 1
* WHILE iterator < size of arr_ints
  * SET new_arr = new_arr + value within arr_ints at space "iterator"
* PRINT new_arr
* END
