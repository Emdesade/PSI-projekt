# zad1
a_list = [x for x in range(155000, 155020)]
b_list = [x for x in range(166050, 166080, 3)]


def zad1(a, b):
    lista = []

    for item in a:
        if item % 2 == 0:
            lista.append(item)
    for item in b:
        if item % 2 != 0:
            lista.append(item)

    return lista


c_list = zad1(a_list, b_list)
print(f"zad1: {c_list}\n")


# zad2
def zad2(data_text):
    length = len(data_text)
    letters = []
    for n in data_text:
        if n not in letters:
            letters.append(n)
    letters.sort()
    slownik = {"length": length, "letters": letters, "big_letters": data_text.upper(),
               "small_letters": data_text.lower()}
    return slownik


slownikz2 = zad2("Napis Testujacy Dzialanie Funkcji z ZADANIA drugiego")
print(f"zad2: {slownikz2}\n")


# zad3
def zad3(text, letter):
    return text.replace(letter, "")


textz3 = zad3("zzZzzzzzazzzdzzzzanzzzizzzezzzzzzzzz zzz3zzzzzzzz", "z")
print(f"zad3: {textz3}\n")


# zad4
def zad4(value, temperature_type):
    if type(value) == int or type(value) == float:
        if temperature_type == "Fahrenheit":
            return round(value * 1.8 + 32, 2)
        if temperature_type == "Rankine":
            return round((value + 273.15) * 1.8, 2)
        if temperature_type == "Kelvin":
            return value + 273.15
        else:
            return "Błąd, sprawdź czy podane dane są prawidłowe"
    else:
        return "Błąd, sprawdź czy podane dane są prawidłowe"


print(f"zad4a: 10`C -> Fahrenheit: {zad4(10, 'Fahrenheit')}")
print(f"zad4b: 10`C -> Rankine: {zad4(10, 'Rankine')}")
print(f"zad4c: 10`C -> Kelvin: {zad4(10, 'Kelvin')}")
print(f"zad4d: test_błąd : {zad4(10, 'Delisle ')}")
print(f"zad4e: test_błąd : {zad4('test', 'Kelvin ')}\n")


# zad5
class Calculator(object):
    def add (self, a,b):
        self.sum = a+b
        return self.sum
    def difference(self, a,b):
        self.difference = a-b
        return self.difference
    def multiply(self, a,b):
        self.multiply = a*b
        return self.multiply
    def divide(self, a ,b):
        self.divide = a/b
        return self.divide

kalkulator= Calculator()
print(kalkulator.add(1,2))
print(kalkulator.difference(1,2))
print(kalkulator.multiply(1,2))
print(kalkulator.divide(1,2))
# zad6
class ScienceCalculator(Calculator):
    def power(self, a, b):
        self.power = a**b
        return self.power
kalkulator = ScienceCalculator()
print(kalkulator.power(2,2))
# zad7
def zad7(text):
    return text[::-1]


print(f"zad7: {zad7('Może jutro ta dama sama da tortu jeżom')}\n")

# zad9
import file_manager
test = file_manager.FileManager("README.md")
print(test.read_file())
test.update_file("Testowanie działania funkcji z zadania 9")
