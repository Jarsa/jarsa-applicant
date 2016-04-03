"""
Applicant
"""


class PrimeClass(object):
    """
    Detect a prime number
    """

    def is_prime(self, num_int):
        """
        @self: parameter always received inside a class in python
        @num_int: a number gives by the user
        """
        # your primes code here
        if num_int:
            if num_int < 2:
                # The number 1 is not prime because it only has a divider.
                return False
            for numb in range(2, num_int):
                if num_int % numb == 0:
                    return False
            return True
        return False
