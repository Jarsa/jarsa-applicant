import math
import functools

class CalculatorClass(object):
    @staticmethod
    def sum(num_list):
        return reduce(lambda n, m: n+m, num_list)

if __name__ == '__main__':
    num_list = raw_input("Ingresa los numeros a sumar:")
    print((CalculatorClass().sum(num_list)))

