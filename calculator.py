"""
Develop a calculator that receives a list of numbers as an input and adds those numbers to create an output.
"""


class CalculatorClass(object):
    """ 
    Select a type of method to be implemented.
    """
    @staticmethod
    def sum(num_list):
        return reduce(lambda n, m: n+m, num_list)

if __name__ == '__main__':
    num_list = int(input("Write a list of numbers:"))
    print(CalculatorClass().sum(num_list))
