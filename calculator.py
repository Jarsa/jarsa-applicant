"""
Here is the class with its method or function to evaluation.
"""


class CalculatorClass(object):
    """
    Inside is the function to sum if a number a list of numbers.
    """

    def sum(self, num_list):
        """
        This receives a list of number and with for sum every element.
        """
        x = 0
        for i in num_list:
            x = x + i
        return x
