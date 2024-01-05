import json
from datetime import datetime

class Animal():
    def __init__(self, name, birth, commands, animal_type):
        self.name = name
        self.birth = birth
        self.commands = list()
        self.commands.append(commands)
        self.animal_type = animal_type
        
       
    def printsss(self):
        return self.name
    
    def get_animals(self):
        
        return self.name, datetime.date(self.birth).isoformat(), self.commands, self.animal_type
    
    def get_commands(self):
        return self.commands
        
    def add_commands(self, command:str):
        self.commands.append(command)
    
    def __str__(self):
        return f"Name: {self.name}, Birth {datetime.date(self.birth).isoformat()}, Commands: {self.commands}, Animal type: {self.animal_type}"

    
class Dog(Animal):
    def __init__(self, name, birth, commands, animal_type):
        super().__init__(name, birth, commands, animal_type)
        
class Cat(Animal):
    def __init__(self, name, birth, commands, animal_type):
        super().__init__(name, birth, commands, animal_type)
        print(name)
    
        
class Hamster(Animal):
    def __init__(self, name, birth, commands, animal_type):
        super().__init__(name, birth, commands, animal_type)


          
class MyError(Exception):
    def __init__(self, text):
        self.txt = text


def check_id(animals):
    if animals:
        return max(list(map(int, animals))) + 1
    return 1

        

def add_animal(animals):
    animal_type = input("Enter animal type: 1. Dog, 2. Cat, 3. Hamster \n")
    try:
        if animal_type.lower() == "dog" or animal_type == "1":
            type="Dog"
            name = input("Enter name animals: ")
            dt = input("Enter birthdate (format day.month.year): ")
            birth =datetime.strptime(dt, '%d.%m.%Y')
            command = input("Enter command animals: ")
            if name == None or birth ==None:
                raise MyError("Error name")
            animal = {check_id(animals): Dog(name, birth, command, type)}
         
        elif animal_type.lower() == "cat" or animal_type == "2":
            type="Cat"
            name = input("Enter name animals: ")
            dt = input("Enter birthdate (format day.month.year): ")
            birth =datetime.strptime(dt, '%d.%m.%Y')
            command = input("Enter command animals: ")
            if name == None or birth ==None:
                raise MyError("Error name")
            animal = {check_id(animals): Cat(name, birth, command, type)}
        elif animal_type.lower() == "hamster" or animal_type == "3":
            type="Hamster"
            name = input("Enter name animals: ")
            dt = input("Enter birthdate (format day.month.year): ")
            birth =datetime.strptime(dt, '%d.%m.%Y')
            command = input("Enter command animals: ")
            if name == None or birth ==None:
                raise MyError("Error name")
            animal = {check_id(animals): Hamster(name, birth, command, type)}
        animals.update(animal)
   
        print(f"Very Good. Animals {name} added to the list animal")
       
    except ValueError:
        print("Error birthdate")
    except MyError as m:
        print(m)

             
def add_command(animals):
    id_cnt = int(input("Please number animals "))
    for key in animals:
        if key == id_cnt:
            s = True
            while s:
                question=input("Train in animal ? (please 1 - Yes or 2 - No) ") 
                if question.lower() == "1":
                    command = input("Enter command animals: ")
                    animals[key].add_commands(command)
                    print("Train good")
                else:
                    s=False
        elif key!= id_cnt:    
            print("Error. No animals")

def show_animal(animals):
    if len(animals) > 0:
        for k,v in animals.items():
            print(k,v)
    else:
        print("No animals")


def show_comand(animals):
    if len(animals) > 0:
        id_cnt = int(input("Please number animals "))
        for key in animals:
            if key == id_cnt:
                animals[key].get_commands()
                print(animals[key].get_commands())
    else:
        print("No animals")
            
def remove_animals(animals):
    if len(animals) > 0:
        id_cnt = int(input("Please number animals "))
        animals.pop(id_cnt)
        print("Remove good")
    else:
        print("No animals")



def save_file(animals):
    path = 'animals.json'
    pets={}
    for k,v in animals.items():
        pets[k]=animals[k].get_animals()
    try:

        with open(path,'w', encoding='UTF-8') as file:
            json.dump(pets, file, ensure_ascii=False)
            print("Save good")
        return True
    except:
        return False


def main():
    animals={}
    
    while True:
        print("Menu: \n 1. Add animal \n 2. Add commands \n 3. Show animals \n 4. Show commands \n 5. Remove animals \n 6. Save list animals \n 7. Exit")
    
        choice = input("Enter choice menu: ")
        
        if choice == "1":
            add_animal(animals)
        elif choice == "2":
            add_command(animals)
        elif choice == "3":
            show_animal(animals)    
        elif choice == "4":
            show_comand(animals)
        elif choice == "5":
            remove_animals(animals)
        elif choice == "6":
            save_file(animals)
        elif choice == "7":
            print("Bye")
            break
        else:
            print("Error choice")

if __name__=="__main__":
    main()
    