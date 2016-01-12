"""
A module to calculate if a number is prime.
"""


class PrimeClass(object):
    """
    A class to calculate if a number is prime.
    """

    def is_prime(self, num_int):
        """Returns True if num_int is prime"""
        # your primes code here
        if num_int == 1:
            return False
        if num_int == 2:
            return True
        if num_int == 3:
            return True
        if num_int % 2 == 0:
            return False
        if num_int % 3 == 0:
            return False

        i_int = 5
        w_int = 2
        while i_int * i_int <= num_int:
            if num_int % i_int == 0:
                return False
            i_int += w_int
            w_int = 6 - w_int

        return True
