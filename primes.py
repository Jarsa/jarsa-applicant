"""
    Prime number input
    An integer is introduced as an input and the
    program calculates if it is a prime number or not.
    """
from math import sqrt


class PrimeClass(object):
    """
        Define the type of method and the method
        itself that will be implemented.
        """
    @staticmethod
    def is_prime(num_int):
        """
            Checks if it is index prime or not.
            """
        if num_int > 1:
            if num_int == 2:
                return True
            if num_int % 2 == 0:
                return False
            for index in range(2, int(sqrt(num_int)-1)):
                if (num_int % index) == 0:
                    return False
            return True
        else:
            return False