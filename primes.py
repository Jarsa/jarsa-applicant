"""
Here is the class with its method or function to evaluation.
"""


class PrimeClass(object):
    """
    Inside is the function to determinate if a number is prime or not.
    """

    def is_prime(self, num_int):
        """
        Negative numbers are not primes.
        A prime number is a number that is only divisible by itself and one.
        """
        if num_int < 1:
            return False
        elif num_int == 2:
            return True
        else:
            for i in range(2, num_int):
                if num_int % i == 0:
                    return False
                return True
