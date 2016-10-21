"""
It contains a class with useful method to determine whether a number is prime.
"""


class PrimeClass(object):
    """
    contains a class with useful method to determine whether a number is prime.
    """

    def is_prime(self, num_int):
        """
        determine whether a number is prime or not.
        """

        if num_int > 1:

            for i in range(2, num_int):
                if (num_int % i) == 0:
                    return False

        else:
            return False

        return True
