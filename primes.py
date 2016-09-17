"""
Your module documentation here
"""


class PrimeClass(object):
    """
    This is a class that contains a is_prime method which checks primes numbers
    """

    def is_prime(self, num_int):
        """
        This is a method called is_prime which checks primes numbers
        """

        # your primes code here
        number = int(num_int)
        count = 0
        if number == 1:
            return False
        else:
            not_prime = False
            for item in range(1, number + 1):
                if (number % item) == 0:
                    count = count + 1
                if count >= 3:
                    not_prime = True
                    break
            if not not_prime or count == 2:
                return True
            else:
                return False
