"""
Modulo de prueba para examen
"""


class CalculatorClass(object):
    """
    Clase para suma de numeros dentro de una lista
    """

    def sum(self, num_list):
        """
        Metodo para sumar numeros de una lista dada
        """
        total = 0
        for i in num_list:
            total = total + i
        return total
