"""
Develop a calculator that receives a list of
numbers as an input and adds those numbers to create an output.
"""


class CalculatorClass(object):
        """
        Select a type of method to be implemented.
        """
    @staticmethod
    def sum(numbers):
        """
           Adding numbers by reducing the list.
            """
        return reduce(lambda x, y: x+y, numbers)



