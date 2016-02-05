'''
The input must be a list of numbers,
then the method sum returns the sum of the numbers in the list
'''
class CalculatorClass(object):
    '''
    Sum method will return the sum of the number list as an integer
    '''
    @staticmethod
    def sum(num_list):
        return reduce(lambda n, m: n+m, num_list)

if __name__ == '__main__':
    num_list = input("Escribe una lista de numberos: ")
    print(CalculatorClass().sum(num_list))
