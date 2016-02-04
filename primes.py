from math import sqrt; from itertools import count, islice

class PrimeClass(object):
    @staticmethod
    def is_prime(num_int):
        return num_int > 1 and all(num_int%i for i in islice(count(2), int(sqrt(num_int)-1)))

if __name__ == '__main__':
    num_int = int(input("Elige un numero entero:"))
    print((PrimeClass.is_prime(num_int)))
