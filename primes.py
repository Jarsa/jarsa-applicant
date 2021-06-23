"""
Primes module for JARSA Testing exercises.
"""


class PrimeClass(object):
    """
    Custom class that handles functionalities for prime numbers.
    """

    def is_prime(self, num_int):
        """
        Takes parameter num_int INTEGER, checks if the number is prime.
        """
        # your primes code here
        isPrime = True

        if num_int > 1:
            for x in range(2, num_int):
                if(num_int % x == 0):
                    isPrime = False
                    break
        return isPrime
