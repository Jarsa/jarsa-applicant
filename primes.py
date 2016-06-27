"""
This module contains one class named PrimeClass. The class contains one method for calculate if one number is prime or not prime.
"""


class PrimeClass(object):
    """
    This class has one method named is prime, this method can return a boolean value if the input number is prime or not prime.
    """

    def is_prime(self, num_int):
        """
        This method receive one parameter, that parameter is one number whatever, that number is parsed to int, then a counter is declared and initialised in zero, this counter will count the number of times the input number is divisible.
        Then is declared a boolean variable named not_prime and is intilialised in False, this boolean will switch if the number is prime or not.
        
        For check if the input number is prime or not is used a for loop, the collection is declared for the initial number will be one and no zero because one number can't be divided by zero.
        
        Inside the for we divide the input number by the control variable (i) and we get the residue and we check if that residue is zero, if is zero means that the input number is divisible and that means we must increase the counter.
        
        Then we check if the counter is greater than 2, if this comprobation is true means that the nomber is not prime because a prime number can only be divided by itself and by one; the boolean variable named not_prime change his value to True because is not prime and we break the loop.
        
        Instead, if the counter is not greater than 2 means that the number could be prime, to check this we check in a conditional if the bool variable named not_prime be False or the counter be equal to two, it the conditional be true we return True else we return False.
        """
        # your primes code here
        number = int(num_int)
        counter = 0
        not_prime= False
        for i in range(1,number+1):
            if (number % i) == 0:
               counter = counter + 1
            if counter > 2:
                not_prime=True
                break

        if not_prime == False or counter == 2:
            return True
        else: return False
