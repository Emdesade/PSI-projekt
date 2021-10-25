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


textz3 = zad3("AAAAaaaaa to jest Napis Testujacy Dzialanie Funkcji z ZADANIA trzeciego", "a")
print(f"zad3: {textz3}\n")

# zad4


# zad5


# zad6


# zad7


# zad8


# zad9
