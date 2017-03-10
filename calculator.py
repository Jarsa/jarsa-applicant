"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Class destinated for the Calculator object abstraction
    for this evaluation excersice
    """

    def sum(self, num_list):
        """
        this method will do a loop in a colletcion of numbers and return
        the value of the summatory of every element in the colletcion
        """
        # your sum code here
        total = 0
        for n in num_list:
            total += n
        return total
