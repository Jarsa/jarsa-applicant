"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Class containing methods for performing mathematical operations
    """

    def sum(self, num_list):
        """
        Sum the items in a variable
        to obtain a result
        """
        sumatoria = 0
        for index in num_list:
            sumatoria = sumatoria + index
        
        return sumatoria