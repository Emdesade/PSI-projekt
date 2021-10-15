#zad1
a = "Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker"
print(a)
#zad2
imie = "Krystian"
nazwisko = "Drezek"
litera_1 = imie[2]
litera_2= nazwisko[3]
liczba_liter1 = 0
liczba_liter2 =0
for i in range(len(a)):
    if a[i]==litera_1:
        liczba_liter1=liczba_liter1+1
    elif a[i]==litera_2:
        liczba_liter2 = liczba_liter2 + 1

print(f"W tekście jest {liczba_liter1} liter {imie[2]} oraz {liczba_liter2} liter {nazwisko[3]}")

#zad3
from zad3_tekst import  tekst
print('{:_>50}'.format(tekst))
print('{:<50}'.format(tekst))
print('{:^50}'.format(tekst))
print('{:*^50}'.format(tekst))
print('{:^6}'.format(tekst))
