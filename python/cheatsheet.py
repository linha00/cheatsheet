# print line
print('print line')

# variables
variable = 0
type(variable) # variable type (int)
variable = True
type(variable) # variable type (boolean)
variable = 1.0
type(variable) # variable type (float)

# input
input_variable = input('input value:')
type(input_variable) # string

# type conversion
type('32') # type string
type(int('32')) # type int

# string methods
variable = 'type"s ' # print "
variable = "type's asd" # print ' 
variable = '''first 
second
third''' #  multiple lines 

# substring
variable[0]
variable[-1]
variable[0:3]
variable[:3]

# string formatting
f'temp {variable}'

len(variable) # length of string
variable.upper() # to upper case
variable.lower() # to lower case
variable.find('OA') # return the index of the char / string
variable.replace('OA', 'replaced') # replace the string with the replacement
'find' in variable # return true if the string is found

# Arithmetic operations
10 / 3 #return float
10 // 3 # return int / floor
10 % 3 # return 10 mod 3
10 ** 3 # return 10 pow 3
temp = 0
temp += 1 # can only use += and not temp++
round(2.9) # return round of float
abs(-2.9) # return the absolute of the number

# if statements
if False:
    print('false')
elif False and True:
    print('false and true')
elif False or False:
    print('false or true')
elif not True:
    print('not true')
else:
    print('else')

# while loop
while True:
    print('infinite loop')
    break

# for loop
for char in 'string':
    print(char)

for item in ['item1', 'item2', 'item3']:
    print(item)

for item in range(2, 10, 2):
    print(item)

# List
list = ['item1', 'item2', 'item3']
list[0]
list[-1]
list[2:]
list.append('item4')
list.append('0, first') # add to index of the list
list.index('item1') # return the index of the item, will return error if not found
list.count('item3') # return the count of the item in the list
list.sort() # sort the list, return none
list.reverse() # sort in reverse

# reference
list2 = list # list2 reference to the same list as list 
list2.append('test') 
print(list) # test is added to the original list
list2 = list.copy() # make a copy the list
list2.append('test2')
print(list) 

list.clear() # clear the list

# tuples
tuple = ("cannot", "modify", "after", "creation")

# matrix / 2D Array
matrix = [[1,2,3], [4,5,6], [7,8,9]]
for row in matrix:
    for col in row:
        print(col)

# unpacking
coordinates = (1, 2, 3)
x, y, z = coordinates 

# dictionaries
customer = {
    'name': 'John Doe',
    'age': 30,
    'address': {
        'line1': '123 Main St',
        'line2': 'Apt 4',
        'city': 'New York',
        'country': 'USA'
    }
}
print(customer['address']['line1']) # return error if not in dictionary
print(customer.get('address', 'default value if not found')) # return none if not in dictionary

# function
def function_name(): # return none
    print('function')

def square(number, number2): # take in 2 input
    return number * number2, number # return 2 output

x, y = square(1, 2)
print(f'x = {x} y = {y}')

# exceptions
try:
    number = int(input('input number: '))
    print(f'number = {number}')
except ValueError:
    print('invalid input')

# classes
class Animal:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def print(self):
        print(f'Name: {self.name}, Age: {self.age}')

Animal('animal', 10).print()

# inheritance
class Dog(Animal):
    def __init__(self, name, age, breed):
        super().__init__(name, age)
        self.breed = breed

class Cat(Animal):
    pass # to remove the error for empty class

Dog('dog', 10, 'small').print()
Cat('cat', 10,).print()

# modules
import module 
print(module.module_function) 

from module import module_function
print(module_function)

# packages
# its a package of modules
# create a folder with a file name __init__.py
# add in all the modules into the folder
import package1.module1
print(package1.module1.module1_function())

from package1.module1 import module1_function
print(module1_function())

# random
import random
list = ['item1', 'item2', 'item3']
random.choice(list)

# random is not truly random as it uses the time and stuff, therefore need to use secret for generating cryptographically secure random numbers
import secrets
secrets.choice(list)

# Generate a secure random integer between 0 and 10
secure_random_number = secrets.randbelow(10)
print(secure_random_number)

# Generate a secure random token (hexadecimal string)
token = secrets.token_hex(16)  # 16 bytes -> 32 characters
print(token)

# Generate a secure random token suitable for URLs
url_safe_token = secrets.token_urlsafe(16)  # 16 bytes
print(url_safe_token)

# path
from pathlib import path
path = path("C:\school(main)\school\package1") # absolute path
path = path("package1") # relative path
path.exists()
# path.mkdir() # create the directory stated in the path
# path.rmdir() # remove the directory stated in the path

path = path()
path.glob('*') # get all the directory
path.glob('*.*') # get all the file