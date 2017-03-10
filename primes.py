"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Class that will allocate all the stuff related
    to a Prime number object abstraction of my own
    """

    def is_prime(self, num_int):
        """
        First check if the number received is 2 or 3
        that inmediatly discard it and return true,
        after that check the residue of the division between 2,
        if it is 0 it is not a prime number, if it is not 0
        it is a prime number
        """
        # your primes code here
        if num_int == 2 or num_int == 3:
            return True
        if num_int % 2 == 0:
            return False
        elif num_int != 0:
            return True
