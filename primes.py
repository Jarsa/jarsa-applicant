"""
Your module documentation here
"""


class PrimeClass(object):
    """
    This class has a method to see if a integer is a prime number
    """

    def is_prime(self, num_int):
        """
        Check if a number is prime.
        Args:
            num_int: the number to check if is prime
        Returns:
            True if it's a prime number
            False if it's not a prime number
        """
        if num_int == 2 or num_int == 3:
            return True
        if num_int % 2 == 0 or num_int < 2:
            return False
        for num in range(3, int(num_int ** 0.5) + 1, 2):   # only odd numbers
            if num_int % num == 0:
                return False
        return True
