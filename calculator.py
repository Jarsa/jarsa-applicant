"""
Applicant
"""


class CalculatorClass(object):
    """
    Operations with numbers
    """

    def sum(self, num_list):
        """
        @self: parameter always received inside a class in python
        @num_list: list of a number that use in the method
        """
        # your sum code here
        total = 0.00
        for item in num_list:
            total += item

        return total
