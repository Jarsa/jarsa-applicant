"""Module to determine primer number or not."""


class PrimeClass(object):
    """Class to define the method for the function."""

    def is_prime(self, num_int):
        """Method to know if the number is prime or not."""
        # your primes code here
        if num_int == 1:
            return False
        else:
            for num in range(2, num_int):
                if num_int % num == 0:
                    return False
        return True
