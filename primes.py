"""
This is my prime Class
"""


class PrimeClass():
    """
    Prime Class used to see if a number is prime
    """

    def is_prime(self, num_int):
        """
        Method that uses prime Class
        """
        # your primes code here
        if num_int == 2 or num_int == 3:
            return True
        even = num_int % 2
        odd = num_int % 3
        if even == 0 or odd == 0:
            return False
        return True
