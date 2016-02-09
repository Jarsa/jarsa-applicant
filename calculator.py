'''
Calculator application, input must be a list of numbers
'''


class CalculatorClass(object):
    '''
    the class only contains a static method called sum
    '''
    @staticmethod
    def sum(numbers):
        '''
        Sum method will return the sum of the number list as an integer
        '''
        return reduce(lambda n, m: n+m, numbers)
