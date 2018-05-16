"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
        # your primes code here
        if num_int == 2 or num_int == 3:
            return True
        if num_int % 2 == 0 or num_int < 2:
            return False
        for x_value in range(3, int(num_int**0.5)+1, 2):
            if num_int % x_value == 0:
                return False
        return True
