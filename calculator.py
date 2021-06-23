"""
Modulo con las clases y métodos necesarios para realizar
la suma de los items de una lista asignados por el usuario
"""


class CalculatorClass(object):
    """
    Clase en la cual se crea el método necesario para realizar 
    las suma de los numeros contenidos en la lista
    """

    def sum(self, num_list):
        """
        Este Metodo realiza la suma de los items de la lista los
        cuales son recorridos por el ciclo for una vez termina el
        ciclo retorna la suma
        """
        laSuma = 0
        for i in num_list:
            laSuma = laSuma + i
        return print(laSuma)


try:
    liastai = []
    n = int(input("¿Cuantos numeros desea sumar? "))
    for i in range(n):
        item = int(input("Numero " + str(i+1) + ": "))
        liastai.append(item)

    Lista = CalculatorClass()
    Lista.sum(liastai)
except:
    print("Ingrese un numero valido")
