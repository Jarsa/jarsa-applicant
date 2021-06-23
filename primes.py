#!/usr/bin/python


def es_primo(numero):
    """

    Funcion que determina si un numero es primo

    Tiene que recibir el numero entero

    """

    for i in range(2, numero):

        if numero % i == 0:
            return False

    return True


while True:

    try:

        numero = int(raw_input("inserta un numero (0) salir >> "))

        if numero == 0:
            break

        if es_primo(numero):

            print
            1

        else:

            print
            0
    except:

        print
        "\nEl numero tiene que ser entero"
