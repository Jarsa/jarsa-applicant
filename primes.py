"""
This module contains one class named PrimeClass.
The class contains one method for calculate if one number is prime.
"""


class PrimeClass(object):
    """
    This class has one method named is prime.
    This method returns a boolean value if the input number is prime.
    """

    def is_prime(self, num_int):
        """
        This method receive one parameter.
        That parameter could be one number whatever.
        This method calculate if the input number is prime.
        If the number is prime we returns true else returns false.
        """
        # your primes code here
        number = int(num_int)
        counter = 0
        not_prime = False
        for test_number in range(1, number + 1):
            if (test_number % test_number) == 0:
                counter = counter + 1
            if counter > 2:
                not_prime = True
                break

        if not not_prime or counter == 2:
            return True
        else:
            return False
