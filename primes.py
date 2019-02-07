"""
Modulo de ejercicio para examen
"""


class PrimeClass(object):
    """
    Esta clase es creada para verificar numeros primos
    """

    def is_prime(self, num_int):
        """
        Este metodo devuelve un True en caso de que el numero
        proporcionado sea primo
        """
        if num < 1:
            return False
        elif num == 2:
            return True
        else:
            for i in range(2, num_int):
                if num % i == 0:
                    return False
            return True   
