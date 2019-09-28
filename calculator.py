"""
Python module for calculator functionality for JARSA Testing exercises.
"""


class CalculatorClass(object):
    """
    Calculator object that implements basic arithmetic.
    """

    def sum(self, num_list):
        """
        Method to return the sum of a list of numbers
        """
        sum = 0
        for x in num_list:
            sum += x

        return sum
