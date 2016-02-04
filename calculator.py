import math
import functools

class CalculatorClass(object):
    @staticmethod
    def sum(num):
        reduce(num)

if __name__ == '__main__':
    num_list = raw_input("Ingresa los numeros a sumar:").split(",")
    num = map(int, num_list)
    print((CalculatorClass.sum(num_list)))


