"""
This module contains one class named CalculatorClass.

The class contains one method for calculate the sum of a list of numbers.
"""


class CalculatorClass(object):
    """
    This class has one method named sum.
    This method returns the sum of the list of numbers given as parameter.
    """

    def sum(self, num_list):
        """
        This method receive one parameter named num_list.
        That parameter will receive a list of numbers.
        Inside the method we use the sum function.
        This function returns the sum of a list of numbers given as parameter.
        We save this sum in one variable named result.
        Finally we return the result.
        """
        # your sum code here
        result = sum(num_list)
        return result
