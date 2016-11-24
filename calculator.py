"""
Your module documentation here
"""


class CalculatorClass(object):


    """
    Your class documentation here
    """
    def sum(self, num_list):
        """
        Hace un recorrido con el for y en cada iteracion suma el valor
        de esa posicion o iteracion a la variable result.

        """

        result = 0
        for num in num_list:
            result += num

        return result
