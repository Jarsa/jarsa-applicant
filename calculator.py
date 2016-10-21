"""
Contains a class with useful method to calculate the sum of a list of numbers.
"""


class CalculatorClass(object):
    """
    Contains useful method to calculate the sum of a list of numbers.
    """

    def sum(self, num_list):
        """
        calculates the sum of a list of numbers.
        """
        if not isinstance(num_list, list):
            print "The method should receive a list of numbers"
            return False

        return sum(num_list)
