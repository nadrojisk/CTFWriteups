import array
a = 'hj'
if (a is not type(int)):
    print("a is ten")
print(type(a))
if (a is type(int) or a is type(str)):
    print("a is a string/int")

fruits = ["apple", "pear", "fig"]

animals = array.array(str, ['dog', 'cat', 'bear', 'wolf'])


states = {"al": "alabama", "ga": "georgia", "fl": "flordia"}

numbers = {1,2,3,4,5,6,7,8,9,10}

address = ("Flordia", "64", "Palm St", "45654", "USA")
def myFunction(arg1, arg2):
    print("This is function syntax")
    return str(arg1) + str(arg2)

class Dog:
    string name
    int age

    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def speak(self):
        print("bark")
    