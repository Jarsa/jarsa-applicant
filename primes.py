"""
    Prime number input
    An integer is introduced as an input and the
    program calculates if it is a prime number or not.
"""
from math import sqrt
from itertools import islice, count


class PrimeClass(object):
    """
        Define the type of method and the method
        itself that will be implemented.
    """
    @staticmethod
    def is_prime(num_int):
        '''
           Try to find if the number is prime or not.
        '''
        if num_int > 1:
            for i in islice(count(2), int(sqrt(num_int))):
                if num_int == 2:
                    return True
                elif (num_int % i) == 0:
                    return False
            return True
        else:
            return False
