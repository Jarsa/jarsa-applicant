"""
This module contains one class named CalculatorClass. The class contains one method for calculate the sum of a list of numbers
"""


class CalculatorClass(object):
    """
    This class has one method named sum, this method can return one variable named result that will contain the sum of the list of numbers given as parameter in the method.
    """

    def sum(self, num_list):
        """
        This method receive one parameter named num_list, that parameter will receive a list of numbers. Inside the method we use the sum function and we pass the input parameter, this function returns the sum of a list of numbers given as parameter, we save this sum in one variable named result and finally we return that variable that contains the result of the sum.
        """
        # your sum code here
        result = sum(num_list)
        return result
            
