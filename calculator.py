"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Class that have the sum func
    """

    def sum(self, num_list):
        """
        Method used to sum numbers in a list
        """
        # your sum code here
        result = 0
        for num in num_list:
            result = num + result
        return result
