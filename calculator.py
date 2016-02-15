"""Module to sum all the numbers."""


class CalculatorClass(object):
    """Class to define the method."""

    def sum(self, num_list):
        """Method to sum the list numbers."""
        # your sum code here
        suma = 0
        for num in num_list:
            suma += num
        return suma
