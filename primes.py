"""
Este modulo sirve para definir la clase así como el método que 
utilizaremos para la saber si un numero es primo o no lo es.
"""


class PrimeClass(object):
    """
    Clase la cual contiene el método para saber si un número
    es primo o no es primo
    """

    def is_prime(self, num_int):
        """
        Método el cual recibe el parametro para hacer las operaciones 
        necesarias como el rango para conocer la naturaleza del número
        """
        if num_int < 2:
            return print(False)
        for i in range(2, num_int):
            if num_int % i == 0:
                return print(False)
        return print(True)


print("Ingresa el numero")
num = int(input())


a = PrimeClass()

a.is_prime(num)
