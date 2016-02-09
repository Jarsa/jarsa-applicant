from math import sqrt; from itertools import count, islice

'''
    PrimeClass contains is_prime method that returns
    true if the number input is a prime number, otherwise
    returns false
'''

class PrimeClass(object):
    '''
        the is_prime method receives a number integer
        and enters a loop to calculate 'number % i',
        where 'i' is all the numbers between 2 and
        the square root of 'number', if the number is 1 or less
        returns false
    '''
    @staticmethod
    def is_prime(number):
        return number >= 2 and all(number%i for i in islice(count(2), int(sqrt(number)-1)))

if __name__ == '__main__':
    number = int(input("Escribe un numero entero: "))
    print PrimeClass.is_prime(number)
