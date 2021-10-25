# zad3 import
from zad3_tekst import tekst

# zad1
a = "Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz " \
    "pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później " \
    "zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach " \
    "60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym " \
    "różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, " \
    "jak Aldus PageMaker "
print(a)
# zad2
imie = "Krystian"
nazwisko = "Drezek"
litera_1 = imie[2]
litera_2 = nazwisko[3]
liczba_liter1 = 0
liczba_liter2 = 0
for i in range(len(a)):
    if a[i] == litera_1:
        liczba_liter1 = liczba_liter1 + 1
    elif a[i] == litera_2:
        liczba_liter2 = liczba_liter2 + 1

print(f"W tekście jest {liczba_liter1} liter {imie[2]} oraz {liczba_liter2} liter {nazwisko[3]}")

# zad3
print('{:_>50}'.format(tekst))
print('{:<50}'.format(tekst))
print('{:^50}'.format(tekst))
print('{:*^50}'.format(tekst))
print('{:^6}'.format(tekst))

# zad4
# print(dir(tekst))
# help(tekst.isalpha())


# zad5
imie_nazwisko = "Drężek Krystian"
stringlength = len(imie_nazwisko)
slicedString = imie_nazwisko[stringlength::-1]
print(slicedString)

# zad6
skala = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
skala_orginalna = skala[:len(skala) // 2]
skala_nowa = skala[len(skala) // 2:]
print(skala_orginalna)
print(skala_nowa)
# zad7
skala1 = skala_orginalna + skala_nowa
skala1.insert(0, 0)
kopiaskali1 = skala1
kopiaskali1.sort(reverse=True)
print(kopiaskali1)
# zad8
index = (155001, 155002, 155003, 155004, 155005, 155006, 155007)
nameSurname = (
    "Alan Kubiak", "Ariel Piotrowski", "Eugeniusz Wójcik", "Alex Walczak", "Florian Zieliński", "Maksymilian Laskowska",
    "Bartłomiej Woźniak")
for x in range(len(nameSurname)):
    print(f"{index[x]}   {nameSurname[x]} ")
# zad9
studenci = {}
studenci2 = {}
for x in range(len(nameSurname)):
    studenci[index[x]] = nameSurname[x]
print(f"9. Słownik studenci: {studenci}")
wiek = (24, 21, 22, 21, 22, 21, 23)
email = (
    "test@gmail.com", "dsafgsh@wp.pl", "example@gmail.com", "lsffghh@o2.pl", "testowyemail@email.com",
    "1512562@gmail.com",
    "0001k000@o2.pl")
rokUr = (1997, 2000, 1999, 2000, 1999, 2000, 1998)
adres = ("Olsztyn", "Warszawa", "Olsztyn", "Barczewo", "Szczytno", "Olsztyn", "olsztyn")
for x in range(len(wiek)):
    studenci2[index[x]] = nameSurname[x], wiek[x], email[x], rokUr[x], adres[x]
print(f"9. Słownik studenci z danymi: {studenci2}")

# zad10
telefony = [648921755, 740385834, 616304692, 291084269, 648921755, 740385834, 987195512, 962112211, 740385834,
            386745397]
telefonySet = set(telefony)
print(f"telefony List: {telefony}")
print(f"telefony Set: {telefonySet}")
# zad11
for i in range(1, 11):
    print(i)
print("---------------------------------------")
# zad12
for i in range(100, 15, -5):
    print(i)


# zad13
def zad13():
    kierowca = {1: "Daniel Ricciardo", 2: "Lando Norris", 3: "Sebastian Vettel", 4: "Lance Stroll",
                5: "Nicholas Latifi", 6: "George Russell"}
    samochod = {1: "MCL35M", 2: "AMR21", 3: "FW43B", 4: "C41",
                5: "VF-21", 6: "AT02"}
    zespol = {1: "McLaren F1 Team", 2: "Aston Martin Cognizant", 3: "Williams Racing",
              4: "Alpine F1 Team", 5: "Uralkali Haas F1 Team", 6: "Scuderia AlphaTauri Honda"}
    pozycja = {1: 6, 2: 2, 3: 4, 4: 3, 5: 1, 6: 5}
    lista = [kierowca, samochod, zespol, pozycja]
    for n in range(1, len(kierowca) + 1):
        print(f"Kierowca {n:<16}", end=" | ")
    print("")
    print("-" * 167)
    for slowniki in lista:
        for n in range(len(slowniki)):
            print(f"{slowniki.get(n + 1):<25}", end=" | ")
        print("")


zad13()
